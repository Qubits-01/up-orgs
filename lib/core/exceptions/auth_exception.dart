import '../interfaces/exception_intf.dart';

class AuthException extends ExceptionIntf {
  const AuthException({
    required super.title,
    required super.message,
    required super.stackTrace,
  });
}
