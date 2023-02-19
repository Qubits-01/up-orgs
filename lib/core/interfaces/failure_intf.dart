import 'package:equatable/equatable.dart';

/// This abstract class should only be "extended" and not "implemented"
/// by an another class.
/// Properties _title and _message are required for every [FailureIntf] objects.
/// You can add more properties on the concrete implementation of this [FailureIntf]
/// as you need it.
abstract class FailureIntf extends Equatable {
  // TODO: Add test on this abstract class.

  const FailureIntf({
    required String title,
    required String message,
  })  : _title = title,
        _message = message;

  final String _title;
  final String _message;

  String get title => _title;
  String get message => _message;

  @override
  List<Object?> get props => [title, message];
}
