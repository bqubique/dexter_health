import '../models/handover_note.dart';
import '../models/shift_report.dart';

class UpdateNote {
  const UpdateNote();

  Future<ShiftReport> call(ShiftReport report, HandoverNote updatedNote) async {
    final updatedNotes = report.notes
        .map((note) => note.id == updatedNote.id ? updatedNote : note)
        .toList();
    return report.copyWith(notes: updatedNotes);
  }
}
