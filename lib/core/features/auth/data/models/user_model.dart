import '../../../../../constants/enums/account_types_enum.dart';
import '../../../../../constants/enums/sex_enum.dart';
import '../../domain/entities/email.dart';
import '../../domain/entities/full_name.dart';
import '../../domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  // TODO: Add tests for this class.

  /// This constructor is private because [UserModel] should only be
  /// instantiated by a named constructors (e.g., [UserModel.fromJsonMap]).
  const UserModel._({
    required super.uid,
    required super.username,
    required super.accountType,
    required super.createdAt,
    required super.updatedAt,
    required super.isSignedIn,
    super.emails,
    super.fullName,
    super.sex,
  });

  // TODO: Improve/fix types assignment.
  factory UserModel.fromJsonMap(Map<String, dynamic> jsonMap) {
    return UserModel._(
      uid: jsonMap['uid'],
      username: jsonMap['username'],
      accountType: jsonMap['accountType'],
      createdAt: jsonMap['createdAt'],
      updatedAt: jsonMap['updatedAt'],
      isSignedIn: jsonMap['isSignedIn'],
      emails: jsonMap['emails'],
      fullName: jsonMap['fullName'],
      sex: jsonMap['sex'],
    );
  }

  // TODO: Improve/fix types assignment.
  Map<String, dynamic> toJsonMap() {
    return {
      'uid': uid,
      'username': username,
      'accountType': accountType,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'isSignedIn': isSignedIn,
      'emails': emails,
      'fullName': fullName,
      'sex': sex,
    };
  }

  factory UserModel.fromCustomInput({
    required String uid,
    required String username,
    required AccountTypesEnum accountType,
    required DateTime createdAt,
    required DateTime updatedAt,
    required bool isSignedIn,
    List<Email>? emails,
    FullName? fullName,
    SexEnum? sex,
  }) {
    return UserModel._(
      uid: uid,
      username: username,
      accountType: accountType,
      createdAt: createdAt,
      updatedAt: updatedAt,
      isSignedIn: isSignedIn,
      emails: emails,
      fullName: fullName,
      sex: sex,
    );
  }
}
