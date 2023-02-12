import '../../../../../constants/enums/account_types_enum.dart';
import '../../../../../utils/interfaces/entity_intf.dart';

class UserEntity implements EntityIntf {
  const UserEntity(
      {required this.uid,
      required this.username,
      required this.accountType,
      required this.createdAt,
      required this.updatedAt,
      this.name});

  final String uid;
  final String username;
  final AccountTypesEnum accountType;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String? name;

  @override
  List<Object?> get props => throw UnimplementedError();

  @override
  bool? get stringify => true;
}
