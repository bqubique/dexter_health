// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'handover_note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HandoverNote _$HandoverNoteFromJson(Map<String, dynamic> json) =>
    _HandoverNote(
      id: json['id'] as String,
      text: json['text'] as String,
      type: $enumDecode(_$NoteTypeEnumMap, json['type']),
      timestamp: DateTime.parse(json['timestamp'] as String),
      authorId: json['authorId'] as String,
      taggedResidentIds: (json['taggedResidentIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      isAcknowledged: json['isAcknowledged'] as bool? ?? false,
    );

Map<String, dynamic> _$HandoverNoteToJson(_HandoverNote instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'type': _$NoteTypeEnumMap[instance.type]!,
      'timestamp': instance.timestamp.toIso8601String(),
      'authorId': instance.authorId,
      'taggedResidentIds': instance.taggedResidentIds,
      'isAcknowledged': instance.isAcknowledged,
    };

const _$NoteTypeEnumMap = {
  NoteType.observation: 'observation',
  NoteType.incident: 'incident',
  NoteType.medication: 'medication',
  NoteType.task: 'task',
  NoteType.supplyRequest: 'supplyRequest',
};
