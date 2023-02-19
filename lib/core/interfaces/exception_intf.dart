import 'package:equatable/equatable.dart';

/// This abstract class should only be "extended" and not "implemented"
/// by an another class.
/// Properties _title,  _message, and _stackTrace are required for every [ExceptionIntf] objects.
/// You can add more properties on the concrete implementation of this [ExceptionIntf]
/// as you need it.
abstract class ExceptionIntf extends Equatable implements Exception {
  // TODO: Add test on this abstract class.

  const ExceptionIntf({
    required String title,
    required String message,
    required StackTrace stackTrace,
  })  : _title = title,
        _message = message,
        _stackTrace = stackTrace;

  final String _title;
  final String _message;
  final StackTrace _stackTrace;

  String get title => _title;
  String get message => _message;
  StackTrace get stackTrace => _stackTrace;

  @override
  List<Object?> get props => [title, message, stackTrace];
}
