import '../../authentication/domain/entities/user_entity.dart';

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
      'emails': emails,
      'fullName': fullName,
      'sex': sex,
    };
  }
}
