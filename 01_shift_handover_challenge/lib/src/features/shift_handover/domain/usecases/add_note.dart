import '../models/handover_note.dart';
import '../models/shift_report.dart';

class AddNote {
  const AddNote();

  Future<ShiftReport> call(ShiftReport report, HandoverNote note) async {
    final updatedNotes = List<HandoverNote>.from(report.notes)..add(note);
    return report.copyWith(notes: updatedNotes);
  }
}
