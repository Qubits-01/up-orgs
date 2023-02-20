import 'package:fpdart/fpdart.dart';

import '../../../../failures/auth_failure.dart';
import '../entities/user_entity.dart';

typedef FutureUserEntity = Future<Either<AuthFailure, UserEntity>>;
typedef StreamUserEntity = Stream<Either<AuthFailure, UserEntity>>;

abstract class AuthRepoIntf {
  const AuthRepoIntf();

  FutureUserEntity createUserWithEmailAndPasswordUseCase({
    required String email,
    required String password,
  });

  StreamUserEntity listenToUserChangesUseCase();
}
