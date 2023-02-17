import 'package:fpdart/fpdart.dart';

import '../../../../failures/auth_failure.dart';
import '../entities/user_entity.dart';

typedef ThisUserEntity = Future<Either<AuthFailure, UserEntity>>;

abstract class AuthRepoIntf {
  const AuthRepoIntf();

  ThisUserEntity createUserWithEmailAndPasswordUseCase({
    required String email,
    required String password,
  });
}
