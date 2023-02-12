import 'package:flutter_test/flutter_test.dart';
import 'package:up_orgs/constants/enums/account_types_enum.dart';

typedef AcctType = AccountTypesEnum;

void main() {
  //* Update this test every time there is a new added account type, removed account type,
  //* or updated account type.
  group('[AccountTypesEnum]', () {
    test(
      'God account type should have an access level of infinity.',
      () => expect(AcctType.god.accessLevel, equals(double.infinity)),
    );

    test(
      'Admin account type should have an access level of 80.0.',
      () => expect(AcctType.admin.accessLevel, equals(80.0)),
    );

    test(
      'Moderator account type should have an access level of 70.0.',
      () => expect(AcctType.moderator.accessLevel, equals(70.0)),
    );

    test(
      'UP Faculty account type should have an access level of 60.0.',
      () => expect(AcctType.upFaculty.accessLevel, equals(60.0)),
    );

    test(
      'UP Student account type should have an access level of 50.0.',
      () => expect(AcctType.upStudent.accessLevel, equals(50.0)),
    );

    test(
      'UP Alumni account type should have an access level of 40.0.',
      () => expect(AcctType.upAlumni.accessLevel, equals(40.0)),
    );

    test(
      'Non-UP account type should have an access level of 30.0.',
      () => expect(AcctType.nonUp.accessLevel, equals(30.0)),
    );

    test(
      'Unverified account type should have an access level of 20.0.',
      () => expect(AcctType.unverified.accessLevel, equals(20.0)),
    );

    test(
      'Anonymous account type should have an access level of 10.0.',
      () => expect(AcctType.anonymous.accessLevel, equals(10.0)),
    );

    test(
      'Suspended account type should have an access level of -20.0.',
      () => expect(AcctType.suspended.accessLevel, -20.0),
    );

    test(
      'Banned account type should have an access level of -30.0.',
      () => expect(AcctType.banned.accessLevel, equals(-30.0)),
    );
  });
}
