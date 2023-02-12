import 'package:flutter_test/flutter_test.dart';
import 'package:up_orgs/constants/enums/org_types_enum.dart';

void main() {
  group('[OrgTypesEnum]', () {
    test(
      'A enum entry should have a String name property.',
      () => expect(
        OrgTypesEnum.academicCluster.name.runtimeType == String,
        isTrue,
      ),
    );
  });
}
