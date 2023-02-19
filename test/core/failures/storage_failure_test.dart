import 'package:flutter_test/flutter_test.dart';
import 'package:up_orgs/constants/enums/storage_types_enum.dart';
import 'package:up_orgs/core/failures/storage_failure.dart';
import 'package:up_orgs/core/interfaces/failure_intf.dart';

void main() {
  group('[StorageFailure]', () {
    late final String tTitle, tMessage;
    late final StorageTypesEnum tStorageType;
    late final StorageFailure tStorageFailure;

    late final String tTitle2, tMessage2;
    late final StorageTypesEnum tStorageType2;
    late final StorageFailure tStorageFailure2;

    late final String tTitle3, tMessage3;
    late final StorageTypesEnum tStorageType3;
    late final StorageFailure tStorageFailure3;

    setUpAll(() {
      tTitle = 'Firebase Storage Failure';
      tMessage = 'Failed to upload file to Firebase Storage.';
      tStorageType = StorageTypesEnum.firebase;
      tStorageFailure = StorageFailure(
        title: tTitle,
        message: tMessage,
        storageType: tStorageType,
      );

      tTitle2 = 'Firebase Storage Failure';
      tMessage2 = 'Failed to upload file to Firebase Storage.';
      tStorageType2 = StorageTypesEnum.firebase;
      tStorageFailure2 = StorageFailure(
        title: tTitle2,
        message: tMessage2,
        storageType: tStorageType2,
      );

      tTitle3 = 'SharedPreferences Storage Failure';
      tMessage3 =
          'Failed to write key-value pairs to SharedPreferences storage.';
      tStorageType3 = StorageTypesEnum.sharedPreferences;
      tStorageFailure3 = StorageFailure(
        title: tTitle3,
        message: tMessage3,
        storageType: tStorageType3,
      );
    });

    test(
      'Should extend FailureIntf.',
      () => expect(tStorageFailure, isA<FailureIntf>()),
    );

    test(
      'Should have the storageType extra property.',
      () => expect(tStorageFailure.storageType, isA<StorageTypesEnum>()),
    );

    test(
      'Instances with the same property values should be equal to each other '
      '(i.e., non-referential equality).',
      () {
        expect(tStorageFailure, equals(tStorageFailure));
        expect(tStorageFailure, equals(tStorageFailure2));
      },
    );

    test(
      'Instances with different property values should not be equal to each other.',
      () => expect(tStorageFailure2, isNot(equals(tStorageFailure3))),
    );

    test(
      'Getter storageType should return the value of _storageType.',
      () {
        expect(tStorageFailure.storageType, isNotNull);
        expect(tStorageFailure.storageType, equals(tStorageType));
      },
    );
  });
}
