import 'package:flutter_test/flutter_test.dart';
import 'package:up_orgs/constants/enums/account_types_enum.dart';
import 'package:up_orgs/constants/enums/sex_enum.dart';
import 'package:up_orgs/core/features/authentication/domain/entities/user_entity.dart';
import 'package:up_orgs/core/interfaces/entity_intf.dart';
import 'package:up_orgs/utils/email.dart';
import 'package:up_orgs/utils/full_name.dart';

void main() {
  group('[UserEntity]', () {
    late final String tUid, tUsername;
    late final AccountTypesEnum tAccountType;
    late final DateTime tCreatedAt, tUpdatedAt;
    late final List<Email>? tEmails;
    late final FullName? tFullName;
    late final SexEnum? tSex;
    late final UserEntity tUserEntity;
    late final UserEntity tUserEntity2;

    setUpAll(() {
      tUid = '1234567890';
      tUsername = 'Qubits';
      tAccountType = AccountTypesEnum.god;
      tCreatedAt = DateTime.now();
      tUpdatedAt = tCreatedAt.add(const Duration(seconds: 42));
      tEmails = const [
        Email('mvviernes1@up.edu.ph', isVerified: true),
        Email('mpvviernes@gmail.com'),
      ];
      tFullName = const FullName(
        firstName: 'Marc Peejay',
        middleName: 'Velasco',
        lastName: 'Viernes',
      );
      tSex = SexEnum.male;

      tUserEntity = UserEntity(
        uid: tUid,
        username: tUsername,
        accountType: tAccountType,
        createdAt: tCreatedAt,
        updatedAt: tUpdatedAt,
        emails: tEmails,
        fullName: tFullName,
        sex: tSex,
      );

      // With null values.
      tUserEntity2 = UserEntity(
        uid: tUid,
        username: tUsername,
        accountType: tAccountType,
        createdAt: tCreatedAt,
        updatedAt: tUpdatedAt,
      );
    });

    // Make sure that the getter methods are functioning properly.
    // Private class fields should not be modified outside of the said class.
    test(
      'Should implement EntityIntf (i.e., a subclass of EntityIntf).',
      () => expect(tUserEntity, isA<EntityIntf>()),
    );

    test(
      'UserEntity objects with different param values should not be equal.',
      () => expect(tUserEntity, isNot(equals(tUserEntity2))),
    );

    test(
      'UserEntity objects with the same param values should be equal.',
      () => expect(tUserEntity, equals(tUserEntity)),
    );

    test(
      'Should return the value of _uid when getter uid is called.',
      () => expect(tUserEntity.uid, equals(tUid)),
    );

    test(
      'Should return the value of _username when getter username is called.',
      () => expect(tUserEntity.username, equals(tUsername)),
    );

    test(
      'Should return the value of _accountType when getter accountType is called.',
      () => expect(tUserEntity.accountType, equals(tAccountType)),
    );

    test(
      'Should return the value of _createdAt when getter createdAt is called.',
      () => expect(tUserEntity.createdAt, equals(tCreatedAt)),
    );

    test(
      'Should return the value of _updatedAt when getter updatedAt is called.',
      () => expect(tUserEntity.updatedAt, equals(tUpdatedAt)),
    );

    test(
      'Should return the value of _emails when getter emails is called.',
      () => expect(tUserEntity.emails, equals(tEmails)),
    );

    test(
      'Should return the value of _fullName when getter fullName is called.',
      () => expect(tUserEntity.fullName, equals(tFullName)),
    );

    test(
      'Should return the value of _sex when getter sex is called.',
      () => expect(tUserEntity.sex, equals(tSex)),
    );

    // These nullable params are important for privacy reasons.
    // In other words, self-identifying information should be optional.
    test(
      'Parameter emails should be nullable',
      () {
        expect(tUserEntity2.emails, isNull);
        expect(tUserEntity.emails, isA<List<Email>?>());
      },
    );

    test(
      'Parameter fullName should be nullable',
      () {
        expect(tUserEntity2.fullName, isNull);
        expect(tUserEntity.fullName, isA<FullName?>());
      },
    );

    test(
      'Parameter sex should be nullable',
      () {
        expect(tUserEntity2.sex, isNull);
        expect(tUserEntity.sex, isA<SexEnum?>());
      },
    );
  });
}
