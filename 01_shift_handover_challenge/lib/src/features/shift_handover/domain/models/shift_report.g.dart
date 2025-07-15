// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShiftReport _$ShiftReportFromJson(Map<String, dynamic> json) => _ShiftReport(
      id: json['id'] as String,
      caregiverId: json['caregiverId'] as String,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      notes: (json['notes'] as List<dynamic>?)
              ?.map((e) => HandoverNote.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      summary: json['summary'] as String? ?? '',
      isSubmitted: json['isSubmitted'] as bool? ?? false,
    );

Map<String, dynamic> _$ShiftReportToJson(_ShiftReport instance) =>
    <String, dynamic>{
      'id': instance.id,
      'caregiverId': instance.caregiverId,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
      'notes': instance.notes,
      'summary': instance.summary,
      'isSubmitted': instance.isSubmitted,
    };
