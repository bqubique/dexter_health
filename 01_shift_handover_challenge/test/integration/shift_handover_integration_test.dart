import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shift_handover_challenge/src/core/di/injection_container.dart';
import 'package:shift_handover_challenge/src/features/shift_handover/data/shift_handover_service.dart';
import 'package:shift_handover_challenge/src/features/shift_handover/presentation/screens/shift_handover_screen.dart';

import 'service_mock.dart';

void main() {
  group('Shift Handover Integration Test', () {
    setUpAll(() async {
      getIt.reset();
      getIt.registerFactory<ShiftHandoverService>(
          () => FakeShiftHandoverServiceMock());
    });

    testWidgets('handles error states gracefully', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: ShiftHandoverScreen(),
        ),
      );

      await tester.pump();
      await tester.pump(const Duration(seconds: 2));
    });
  });
}
