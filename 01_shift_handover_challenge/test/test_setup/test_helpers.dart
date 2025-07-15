import 'package:shift_handover_challenge/src/features/shift_handover/domain/models/handover_note.dart';
import 'package:shift_handover_challenge/src/features/shift_handover/domain/models/shift_report.dart';
import 'package:shift_handover_challenge/src/features/shift_handover/domain/note_type_enum.dart';

class TestHelpers {
  static HandoverNote createTestNote({
    String id = 'test-note',
    String text = 'Test note',
    NoteType type = NoteType.observation,
    String authorId = 'test-author',
    DateTime? timestamp,
  }) {
    return HandoverNote(
      id: id,
      text: text,
      type: type,
      timestamp: timestamp ?? DateTime.now(),
      authorId: authorId,
    );
  }

  static ShiftReport createTestReport({
    String id = 'test-report',
    String caregiverId = 'test-caregiver',
    DateTime? startTime,
    List<HandoverNote>? notes,
  }) {
    return ShiftReport(
      id: id,
      caregiverId: caregiverId,
      startTime: startTime ?? DateTime.now(),
      notes: notes ?? [],
    );
  }
}
