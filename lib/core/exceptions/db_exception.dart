import '../interfaces/exception_intf.dart';

class DbException extends ExceptionIntf {
  const DbException({
    required super.title,
    required super.message,
    required super.stackTrace,
  });
}
