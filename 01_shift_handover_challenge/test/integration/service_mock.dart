import 'dart:async';

import 'package:shift_handover_challenge/src/core/errors/failure.dart';
import 'package:shift_handover_challenge/src/features/shift_handover/data/shift_handover_service.dart';
import 'package:shift_handover_challenge/src/features/shift_handover/domain/models/handover_note.dart';
import 'package:shift_handover_challenge/src/features/shift_handover/domain/models/shift_report.dart';
import 'package:shift_handover_challenge/src/features/shift_handover/domain/note_type_enum.dart';

class FakeShiftHandoverServiceMock extends ShiftHandoverService {
  ShiftReport? _cachedReport;

  @override
  Future<ShiftReport> getShiftReport(String caregiverId) async {
    await Future.delayed(const Duration(milliseconds: 100));
    _cachedReport ??= ShiftReport(
      id: 'fake-shift-001',
      caregiverId: caregiverId,
      startTime: DateTime.now().subtract(const Duration(hours: 8)),
      notes: [
        HandoverNote(
          id: 'note-1',
          text: 'Sample note 1 of type observation',
          type: NoteType.observation,
          timestamp: DateTime.now().subtract(const Duration(hours: 2)),
          authorId: caregiverId,
        ),
        HandoverNote(
          id: 'note-2',
          text: 'Sample note 2 of type supply request',
          type: NoteType.supplyRequest,
          timestamp: DateTime.now().subtract(const Duration(hours: 1)),
          authorId: caregiverId,
        ),
      ],
    );
    return _cachedReport!;
  }

  @override
  Future<ShiftReport> addNote(HandoverNote note) async {
    await Future.delayed(const Duration(milliseconds: 50));
    if (_cachedReport == null) {
      throw Failure('No report loaded to add note to.');
    }
    _cachedReport = _cachedReport!.addNote(note);
    return _cachedReport!;
  }

  @override
  Future<bool> submitShiftReport(ShiftReport report) async {
    await Future.delayed(const Duration(milliseconds: 100));
    return true;
  }
}
