import 'package:flutter_test/flutter_test.dart';
import 'package:up_orgs/constants/enums/up_campuses_enum.dart';

void main() {
  group('[OrgTypesEnum]', () {
    test(
      'A enum entry should have a String name property.',
      () => expect(UpCampuses.diliman.name, isA<String>()),
    );
  });
}
