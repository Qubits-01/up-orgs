import 'package:equatable/equatable.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:up_orgs/core/features/auth/domain/entities/full_name.dart';

void main() {
  group('[FullName]', () {
    late final String tFirstName, tMiddleName, tLastName;
    late final FullName tFullName;
    late final String tFirstName2, tMiddleName2, tLastName2;
    late final String? tSuffix2;
    late final FullName tFullName2;

    setUpAll(() {
      tFirstName = 'Marc Peejay';
      tMiddleName = 'Velasco';
      tLastName = 'Viernes';
      tFullName = FullName(
        firstName: tFirstName,
        middleName: tMiddleName,
        lastName: tLastName,
      );

      tFirstName2 = 'Cram Yajeep';
      tMiddleName2 = 'Ocsalev';
      tLastName2 = 'Senreiv';
      tSuffix2 = 'Jr.';
      tFullName2 = FullName(
        firstName: tFirstName2,
        middleName: tMiddleName2,
        lastName: tLastName2,
        suffix: tSuffix2,
      );
    });

    test(
      'FullName should extend Equatable (i.e., FullName should be a subclass of Equatable).',
      () => expect(tFullName, isA<Equatable>()),
    );

    test(
      'Getter firstName should return the value of _firstName.',
      () => expect(tFullName.firstName, equals(tFirstName)),
    );

    test(
      'Getter middleName should return the value of _middleName.',
      () => expect(tFullName.middleName, equals(tMiddleName)),
    );

    test(
      'Getter lastName should return the value of _lastName.',
      () => expect(tFullName.lastName, equals(tLastName)),
    );

    test(
      'Parameter suffix should be of Nullable type (i.e,. String?).',
      () => expect(tFullName.suffix, isA<String?>()),
    );

    test(
      'Getter suffix should return null when no value was passed to the parameter suffix.',
      () => expect(tFullName.suffix, isNull),
    );

    test(
      'Getter suffix should return a String or the value of _suffix when a valid value '
      'was passed to the parameter suffix.',
      () {
        expect(tFullName2.suffix, equals(tSuffix2));
        expect(tFullName2.suffix, isNotNull);
      },
    );

    test(
      'Getter middleInitial should return only the first character value of _middleName.',
      () => expect(tFullName.middleInitial, equals(tMiddleName[0])),
    );

    test(
      'Getter fullNameFnMiLnS should return the full name in the format of '
      '\'FirstName MiddleInitial. LastName\' given that parameter suffix is null.',
      () => expect(
        tFullName.fullNameFnMiLnS,
        equals('$tFirstName ${tFullName.middleInitial}. $tLastName'),
      ),
    );

    test(
      'Getter fullNameFnMiLnS should return the full name in the format of '
      '\'FirstName MiddleInitial. LastName, Suffix\' given that parameter suffix is non-null.',
      () {
        expect(
          tFullName2.fullNameFnMiLnS,
          equals(
            '$tFirstName2 ${tFullName2.middleInitial}. $tLastName2, $tSuffix2',
          ),
        );
      },
    );

    test(
      'Getter fullNameLnFnMn should return the full name in the format of '
      '\'LastName, FirstName MiddleInitial.\' given that parameter suffix is null.',
      () => expect(
        tFullName.fullNameLnFnMn,
        equals('$tLastName, $tFirstName ${tFullName.middleInitial}.'),
      ),
    );

    test(
      'FullName instances with different fields should not be equal to each other (while using Equatable).',
      () => expect(tFullName, isNot(equals(tFullName2))),
    );

    test(
      'FullName instances with the same fields should be equal to each other (while using Equatable).',
      () => expect(tFullName, equals(tFullName)),
    );
  });
}
