import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:up_orgs/core/features/auth/data/providers/auth_provider.dart';
import 'package:up_orgs/service_locator/service_locator.dart';

void main() {
  group('[AuthProvider]', () {
    test('description', () {
      final AuthProviderImpl tAuthProvider =
          AuthProviderImpl(firebaseAuth: sl<FirebaseAuth>());

      tAuthProvider.listenToUserChangesUseCase();
    });
  });
}
