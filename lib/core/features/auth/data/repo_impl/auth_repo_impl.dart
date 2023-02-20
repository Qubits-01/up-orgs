import 'package:fpdart/fpdart.dart';

import '../../../../failures/auth_failure.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repo_intf/auth_repo_intf.dart';
import '../models/user_model.dart';
import '../providers/auth_provider.dart';

class AuthRepoImpl implements AuthRepoIntf {
  // TODO: Add test on this class.

  const AuthRepoImpl({required AuthProviderImpl authProvider})
      : _authProvider = authProvider;

  final AuthProviderImpl _authProvider;

  @override
  FutureUserEntity createUserWithEmailAndPasswordUseCase({
    required String email,
    required String password,
  }) async {
    late final UserModel userModel;
    late final UserEntity userEntity;

    try {
      userModel = await _authProvider.createUserWithEmailAndPasswordUseCase(
        email: email,
        password: password,
      );

      userEntity = UserEntity(
        uid: userModel.uid,
        username: userModel.username,
        accountType: userModel.accountType,
        createdAt: userModel.createdAt,
        updatedAt: userModel.updatedAt,
        isSignedIn: userModel.isSignedIn,
      );
    } catch (e) {
      // TODO: Improve exception/error details. Preferably, user FirebaseAuth defaults.
      return const Left(AuthFailure(
        title: 'Firebase Auth Exception',
        message: 'Can not create user.',
      ));
    }

    return Right(userEntity);
  }

  @override
  StreamUserEntity listenToUserChangesUseCase() {
    // TODO: implement listenToUserChangesUseCase
    throw UnimplementedError();
  }
}
