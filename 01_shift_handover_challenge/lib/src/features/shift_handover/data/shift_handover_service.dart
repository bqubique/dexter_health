import 'dart:math';

import 'package:shift_handover_challenge/src/features/shift_handover/domain/models/handover_note.dart';
import 'package:shift_handover_challenge/src/features/shift_handover/domain/models/shift_report.dart';
import 'package:shift_handover_challenge/src/features/shift_handover/domain/note_type_enum.dart';

class ShiftHandoverService {
  ShiftReport? _cachedReport;

  Future<ShiftReport> getShiftReport(String caregiverId) async {
    await Future.delayed(const Duration(seconds: 1));
    _cachedReport ??= ShiftReport(
      id: 'shift-123',
      caregiverId: caregiverId,
      startTime: DateTime.now().subtract(const Duration(hours: 8)),
      notes: List.generate(3, (index) {
        final type = NoteType.values[Random().nextInt(NoteType.values.length)];
        return HandoverNote(
          id: 'note-$index',
          text: 'Sample note ${index + 1} of type ${type.name}',
          type: type,
          timestamp: DateTime.now().subtract(Duration(hours: index)),
          authorId: caregiverId,
        );
      }),
    );
    print(
        '🚀 [SERVICE] getShiftReport -> ${_cachedReport!.notes.length} notes loaded');
    return _cachedReport!;
  }

  Future<ShiftReport> addNote(HandoverNote note) async {
    await Future.delayed(const Duration(milliseconds: 300));
    _cachedReport = _cachedReport?.addNote(note);
    print('✅ [SERVICE] addNote -> total: ${_cachedReport?.notes.length}');
    return _cachedReport!;
  }

  Future<bool> submitShiftReport(ShiftReport report) async {
    await Future.delayed(const Duration(seconds: 2));
    final success = Random().nextBool();
    print(success ? '✅ [SERVICE] submit success' : '❌ [SERVICE] submit failed');
    return success;
  }
}
