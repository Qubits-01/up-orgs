import 'package:firebase_auth/firebase_auth.dart';

import '../../../../../constants/enums/account_types_enum.dart';
import '../models/user_model.dart';

abstract class AuthProviderIntf {
  // TODO: Add test on this abstract class.

  const AuthProviderIntf();

  Future<UserModel> createUserWithEmailAndPasswordUseCase({
    required String email,
    required String password,
  });
}

class AuthProviderImpl implements AuthProviderIntf {
  // TODO: Add test on this class.

  const AuthProviderImpl({required FirebaseAuth firebaseAuth})
      : _firebaseAuth = firebaseAuth;

  final FirebaseAuth _firebaseAuth;

  @override
  Future<UserModel> createUserWithEmailAndPasswordUseCase({
    required String email,
    required String password,
  }) async {
    late final UserCredential userCredential;
    late final User? user;
    late final UserModel userModel;

    try {
      userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      user = userCredential.user;

      // TODO: Remove temporary placeholder input data.
      userModel = UserModel.fromCustomInput(
        uid: user?.uid ?? '1234567890',
        username: user?.displayName ?? '<no-username>',
        accountType: AccountTypesEnum.god,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );
    } catch (e) {
      print(e);
      throw Exception(e);
    }

    return userModel;
  }
}
