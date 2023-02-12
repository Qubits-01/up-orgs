import 'package:equatable/equatable.dart';

/// This class is immutable by design. If you change the value of any of its properties,
/// then you need to create a new instance of this class.
class FullName extends Equatable {
  const FullName({
    required String firstName,
    required String middleName,
    required String lastName,
    String? suffix,
  })  : _firstName = firstName,
        _middleName = middleName,
        _lastName = lastName,
        _suffix = suffix;

  // Make these as private fields so that actors outside of this class can not freely
  // modify it (i.e., mitigate unintentional updates/edits on these private fields).
  final String _firstName;
  final String _middleName;
  final String _lastName;
  final String? _suffix;

  String get firstName => _firstName;
  String get middleName => _middleName;
  String get lastName => _lastName;
  String? get suffix => _suffix;
  String get middleInitial => _lastName[0];

  String get fullNameFnMiLnS {
    String suffixPart = (suffix == null) ? '' : ', $suffix';
    return '$firstName $middleInitial. $lastName$suffixPart';
  }

  String get fullNameLnFnMn => '$lastName, $firstName $middleInitial.';

  @override
  List<Object?> get props => [_firstName, _middleName, _lastName, _suffix];
}
