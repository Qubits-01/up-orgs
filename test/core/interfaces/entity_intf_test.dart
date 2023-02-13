import 'package:equatable/equatable.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:up_orgs/core/interfaces/entity_intf.dart';
import 'package:mocktail/mocktail.dart';

void main() {
  group('[EntityIntf]', () {
    test(
      'Should be a subclass of Equatable (i.e., extends Equatable)',
      () {
        // ARRANGE
        final tEntityIntf = MockEntityIntf();

        // ASSERT
        expect(tEntityIntf, isA<Equatable>());
      },
    );
  });
}

/// A mock EntityIntf class (for testing purposes).
class MockEntityIntf extends Mock implements EntityIntf {}
