import 'package:get_it/get_it.dart';
import 'package:rq_logger/rq_logger.dart';

void rqLog(
  message, {
  String prefix = '',
  RQLogLevel level = RQLogLevel.info,
}) {
  GetIt.I<RQLogger>().log(
    '$prefix: $message',
    level: level,
  );
}

void rqDebug(
  message, {
  String prefix = '',
}) {
  rqLog(
    message,
    prefix: prefix,
    level: RQLogLevel.debug,
  );
}
