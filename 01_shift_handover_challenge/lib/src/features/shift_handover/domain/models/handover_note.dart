import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shift_handover_challenge/src/features/shift_handover/domain/note_type_enum.dart';

part 'handover_note.freezed.dart';
part 'handover_note.g.dart';

@freezed
abstract class HandoverNote with _$HandoverNote {
  const HandoverNote._();

  const factory HandoverNote({
    required String id,
    required String text,
    required NoteType type,
    required DateTime timestamp,
    required String authorId,
    @Default([]) List<String> taggedResidentIds,
    @Default(false) bool isAcknowledged,
  }) = _HandoverNote;

  factory HandoverNote.fromJson(Map<String, dynamic> json) =>
      _$HandoverNoteFromJson(json);

  Color get color {
    return switch (type) {
      NoteType.incident => Colors.red.shade100,
      NoteType.supplyRequest => Colors.yellow.shade100,
      _ => Colors.blue.shade100,
    };
  }

  HandoverNote acknowledge() => copyWith(isAcknowledged: true);
}
