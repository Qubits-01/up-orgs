import 'package:equatable/equatable.dart';

/// A class that represents an email.
/// This class is immutable by design in order to prevent accidental
/// changes in its fields. If you need to change the fields, then you
/// must create a new instance of this class alongside with the new
/// field values.
class Email extends Equatable {
  // TODO: Add tests for this class.

  const Email(email, {isVerified = false})
      : _email = email,
        _isVerified = isVerified;

  final String _email;
  final bool _isVerified;

  String get email => _email;
  bool get isVerified => _isVerified;

  // TODO: Add a getter for getting the email domain.
  // TODO: Add a getter for getting the email username.

  @override
  List<Object?> get props => [_email, _isVerified];
}
