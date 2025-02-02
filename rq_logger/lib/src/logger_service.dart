import 'dart:developer';

import 'package:hd_wallet/bip39/english.dart';
import 'package:rq_exception/rq_exception.dart';
import 'package:rq_logger/rq_logger.dart';
import 'package:rq_logger/src/rq_log_level.dart';
import 'package:rq_logger/src/rq_trienode.dart';
import 'package:logger/logger.dart' as logger;
import 'package:logging/logging.dart';

class RQLogger {
  final String _env;
  late Logger _logger;

  RQLogger(this._env) {
    _logger = Logger(_env);

    Logger.root.level = Level.ALL; // defaults to Level.INFO
    _logger.onRecord.listen((record) {
      String messageToLog = obfuscateMessage(record.message);

      logger.Logger(
        printer: logger.PrettyPrinter(
          methodCount: 0,
          printTime: true,
          levelColors: <logger.Level, logger.AnsiColor>{
            logger.Level.error: const logger.AnsiColor.fg(009),
            logger.Level.warning: const logger.AnsiColor.fg(011),
            logger.Level.info: const logger.AnsiColor.fg(014),
            logger.Level.debug: const logger.AnsiColor.fg(013),
          },
        ),
        output: DeveloperConsoleOutput(),
        filter: _getFilterFromEnv(_env),
      ).log(
        _getPrintLogLevel(record.level),
        messageToLog,
        error: record.error,
        stackTrace: record.stackTrace,
        time: DateTime.now(),
      );
    });
  }

  Future<T> log<T>(
    String message, {
    RQLogLevel level = RQLogLevel.debug,
    Exception? exception,
    StackTrace? stackTrace,
    List<RQLoggingPostProcessor> postProcessor = const [],
  }) async {
    _logger.log(
      _getLogLevel(level),
      message,
      exception,
      stackTrace,
    );

    // run the futures in parallel
    if (postProcessor.isNotEmpty) {
      final List<Future> futures = [];
      for (final processor in postProcessor) {
        final futureOrResult = processor.processError(exception, stackTrace);
        if (futureOrResult is Future) {
          futures.add(futureOrResult);
        }
      }

      await Future.wait(futures);
    }

    return Future.value();
  }

  logger.Level _getPrintLogLevel(Level level) {
    switch (level) {
      case Level.FINE:
        return logger.Level.debug;

      case Level.INFO:
        return logger.Level.info;

      case Level.WARNING:
        return logger.Level.warning;

      case Level.SEVERE:
        return logger.Level.error;

      default:
        throw UnfulfilledExhaustiveException('Unknown log level ${level.name}');
    }
  }

  Level _getLogLevel(RQLogLevel level) {
    switch (level) {
      case RQLogLevel.debug:
        return Level.FINE;

      case RQLogLevel.info:
        return Level.INFO;

      case RQLogLevel.warning:
        return Level.WARNING;

      case RQLogLevel.error:
        return Level.SEVERE;

      default:
        throw UnfulfilledExhaustiveException('Unknown log level ${level.name}');
    }
  }

  logger.LogFilter _getFilterFromEnv(String env) {
    switch (env) {
      case 'prod':
        return logger.ProductionFilter();
      case 'staging':
      case 'dev':
      default:
        return logger.DevelopmentFilter();
    }
  }

  String obfuscateMessage(String message) {
    List<String> sensitiveWords = WORDLIST;

    Trie trie = Trie();
    for (String word in sensitiveWords) {
      trie.insert(word);
    }

    List<String> words = message.split(' ');
    for (int i = 0; i < words.length; i++) {
      if (trie.search(words[i].toLowerCase())) {
        words[i] = '*' * words[i].length;
      }
    }

    return words.join(' ');
  }
}

class DeveloperConsoleOutput extends logger.LogOutput {
  @override
  void output(logger.OutputEvent event) {
    final StringBuffer buffer = StringBuffer();
    event.lines.forEach(buffer.writeln);
    log(buffer.toString(), name: 'I/flutter');
  }
}
