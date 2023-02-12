import 'package:up_orgs/utils/interfaces/entity_intf.dart';

class UserEntity implements EntityIntf {
  const UserEntity({
    required this.uid,
    required this.username,
  });

  final String uid;
  final String username;

  @override
  List<Object?> get props => throw UnimplementedError();

  @override
  bool? get stringify => true;
}
