  import 'dart:async';

abstract class RQLoggingPostProcessor {
  final String env;
  RQLoggingPostProcessor(this.env);

  FutureOr<T> processError<T>(Exception? exception, StackTrace? s);
}
