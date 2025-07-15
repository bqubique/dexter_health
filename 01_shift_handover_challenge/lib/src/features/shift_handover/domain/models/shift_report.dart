import 'package:freezed_annotation/freezed_annotation.dart';

import 'handover_note.dart';

part 'shift_report.freezed.dart';
part 'shift_report.g.dart';

@freezed
abstract class ShiftReport with _$ShiftReport {
  const ShiftReport._();

  const factory ShiftReport({
    required String id,
    required String caregiverId,
    required DateTime startTime,
    DateTime? endTime,
    @Default([]) List<HandoverNote> notes,
    @Default('') String summary,
    @Default(false) bool isSubmitted,
  }) = _ShiftReport;

  factory ShiftReport.fromJson(Map<String, dynamic> json) =>
      _$ShiftReportFromJson(json);

  ShiftReport addNote(HandoverNote note) => copyWith(notes: [...notes, note]);

  ShiftReport submitReport(String summary) => copyWith(
        summary: summary,
        endTime: DateTime.now(),
        isSubmitted: true,
      );
}
