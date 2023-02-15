import 'package:equatable/equatable.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:up_orgs/core/features/authentication/domain/entities/email.dart';

void main() {
  group('[Email]', () {
    late final String tEmail, tEmail2;
    late final Email tEmailObj;
    late final Email tEmailObj2;

    setUpAll(() {
      tEmail = 'mvviernes1@up.edu.ph';
      tEmail2 = 'mpvviernes@gmail.com';
      tEmailObj = Email(tEmail, isVerified: true);
      tEmailObj2 = Email(tEmail2);
    });

    test('Should extend Equatable.', () => expect(tEmailObj, isA<Equatable>()));

    test(
      'Instances with different params should not be equal.',
      () => expect(tEmailObj, isNot(equals(tEmailObj2))),
    );

    test(
      'Instances with the same params should be equal.',
      () => expect(tEmailObj2, equals(Email(tEmail2))),
    );

    test(
      'Parameter isVerified should have the default value of false.',
      () => expect(tEmailObj2.isVerified, equals(false)),
    );

    test(
      'Should return the value of _email when getter email is called.',
      () => expect(tEmailObj.email, equals(tEmail)),
    );

    test(
      'Should return the value of _isVerified when getter isVerified is called.',
      () => expect(tEmailObj.isVerified, equals(true)),
    );
  });
}
