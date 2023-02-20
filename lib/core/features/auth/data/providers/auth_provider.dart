import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';

import '../../../../../constants/enums/account_types_enum.dart';
import '../../../../../constants/enums/sex_enum.dart';
import '../../domain/entities/email.dart';
import '../../domain/entities/full_name.dart';
import '../models/user_model.dart';

abstract class AuthProviderIntf {
  // TODO: Add test on this abstract class.

  const AuthProviderIntf();

  Future<UserModel> createUserWithEmailAndPasswordUseCase({
    required String email,
    required String password,
  });

  Stream<UserModel?> listenToUserChangesUseCase();
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
        isSignedIn: true,
      );
    } catch (e) {
      print(e);
      throw Exception(e);
    }

    return userModel;
  }

  @override
  Stream<UserModel?> listenToUserChangesUseCase() {
    return _firebaseAuth.userChanges().map<UserModel?>((User? userEvent) {
      UserModel? userModel;

      if (userEvent != null) {
        // TODO: Do not use placeholder values.

        // User is currently singed-in.
        userModel = UserModel.fromCustomInput(
          uid: userEvent.uid,
          username: userEvent.displayName ?? '<no-username>',
          accountType: AccountTypesEnum.god,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
          isSignedIn: true,
          emails: [
            const Email('mvviernes1@up.edu.ph', isVerified: true),
            const Email('mpvviernes@gmail.com'),
          ],
          fullName: const FullName(
            firstName: 'Marc Peejay',
            middleName: 'Velasco',
            lastName: 'Viernes',
          ),
          sex: SexEnum.male,
        );
      } else {
        // User is currently signed-out.
        // Do nothing (i.e., automatically returns null).
      }

      return userModel;
    });
  }
}
