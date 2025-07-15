import 'package:flutter_test/flutter_test.dart';
import 'package:shift_handover_challenge/src/core/errors/failure.dart';
import 'package:shift_handover_challenge/src/features/shift_handover/data/shift_handover_service.dart';
import 'package:shift_handover_challenge/src/features/shift_handover/domain/models/handover_note.dart';
import 'package:shift_handover_challenge/src/features/shift_handover/domain/note_type_enum.dart';

void main() {
  group('ShiftHandoverService', () {
    late ShiftHandoverService service;

    setUp(() {
      service = ShiftHandoverService();
    });

    test('getShiftReport returns a valid report with notes', () async {
      final report = await service.getShiftReport('caregiver-123');

      expect(report.caregiverId, 'caregiver-123');
      expect(report.notes, hasLength(3));
      expect(report.id, 'shift-123');
    });

    test('addNote adds a note to the cached report', () async {
      await service.getShiftReport('caregiver-123');
      final note = HandoverNote(
        id: 'test-note',
        text: 'Test note',
        type: NoteType.observation,
        timestamp: DateTime.now(),
        authorId: 'caregiver-123',
      );

      final updatedReport = await service.addNote(note);

      expect(updatedReport.notes, hasLength(4));
      expect(updatedReport.notes.last.text, 'Test note');
    });

    test('addNote throws Failure when no report is loaded', () async {
      final note = HandoverNote(
        id: 'test-note',
        text: 'Test note',
        type: NoteType.observation,
        timestamp: DateTime.now(),
        authorId: 'caregiver-123',
      );

      expect(
        () => service.addNote(note),
        throwsA(isA<Failure>()),
      );
    });

    test('submitShiftReport returns success or failure', () async {
      final report = await service.getShiftReport('caregiver-123');

      try {
        final result = await service.submitShiftReport(report);
        expect(result, isA<bool>());
      } catch (e) {
        expect(e, isA<Failure>());
      }
    });
  });
}
