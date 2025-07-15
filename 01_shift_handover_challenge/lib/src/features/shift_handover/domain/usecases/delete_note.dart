import '../models/shift_report.dart';

class DeleteNote {
  const DeleteNote();

  Future<ShiftReport> call(ShiftReport report, String noteId) async {
    final updatedNotes = report.notes.where((n) => n.id != noteId).toList();
    return report.copyWith(notes: updatedNotes);
  }
}
