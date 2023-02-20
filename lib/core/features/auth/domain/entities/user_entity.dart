import '../../../../../constants/enums/account_types_enum.dart';
import '../../../../../constants/enums/sex_enum.dart';
import '../../../../interfaces/entity_intf.dart';
import 'email.dart';
import 'full_name.dart';

/// A class that represents a user entity.
/// This class is immutable by design in order to prevent accidental changes.
/// If you need to change the fields, then you must create a new instance of
/// this class alongside with the new field values.
class UserEntity implements EntityIntf {
  const UserEntity({
    required String uid,
    required String username,
    required AccountTypesEnum accountType,
    required DateTime createdAt,
    required DateTime updatedAt,
    required bool isSignedIn,
    List<Email>? emails,
    FullName? fullName,
    SexEnum? sex,
  })  : _uid = uid,
        _username = username,
        _accountType = accountType,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _isSignedIn = isSignedIn,
        _emails = emails,
        _fullName = fullName,
        _sex = sex;

  final String _uid;
  final String _username;
  final AccountTypesEnum _accountType;
  final DateTime _createdAt;
  final DateTime _updatedAt;
  final bool _isSignedIn;
  final List<Email>? _emails;
  final FullName? _fullName;
  final SexEnum? _sex;

  String get uid => _uid;
  String get username => _username;
  AccountTypesEnum get accountType => _accountType;
  DateTime get createdAt => _createdAt;
  DateTime get updatedAt => _updatedAt;
  bool get isSignedIn => _isSignedIn;
  List<Email>? get emails => _emails;
  FullName? get fullName => _fullName;
  SexEnum? get sex => _sex;

  @override
  List<Object?> get props => [
        uid,
        username,
        accountType,
        createdAt,
        updatedAt,
        isSignedIn,
        emails,
        fullName,
        sex,
      ];

  @override
  bool? get stringify => true;
}
