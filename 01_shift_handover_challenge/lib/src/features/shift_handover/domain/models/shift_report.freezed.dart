// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shift_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShiftReport {
  String get id;
  String get caregiverId;
  DateTime get startTime;
  DateTime? get endTime;
  List<HandoverNote> get notes;
  String get summary;
  bool get isSubmitted;

  /// Create a copy of ShiftReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ShiftReportCopyWith<ShiftReport> get copyWith =>
      _$ShiftReportCopyWithImpl<ShiftReport>(this as ShiftReport, _$identity);

  /// Serializes this ShiftReport to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShiftReport &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.caregiverId, caregiverId) ||
                other.caregiverId == caregiverId) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            const DeepCollectionEquality().equals(other.notes, notes) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.isSubmitted, isSubmitted) ||
                other.isSubmitted == isSubmitted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      caregiverId,
      startTime,
      endTime,
      const DeepCollectionEquality().hash(notes),
      summary,
      isSubmitted);

  @override
  String toString() {
    return 'ShiftReport(id: $id, caregiverId: $caregiverId, startTime: $startTime, endTime: $endTime, notes: $notes, summary: $summary, isSubmitted: $isSubmitted)';
  }
}

/// @nodoc
abstract mixin class $ShiftReportCopyWith<$Res> {
  factory $ShiftReportCopyWith(
          ShiftReport value, $Res Function(ShiftReport) _then) =
      _$ShiftReportCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String caregiverId,
      DateTime startTime,
      DateTime? endTime,
      List<HandoverNote> notes,
      String summary,
      bool isSubmitted});
}

/// @nodoc
class _$ShiftReportCopyWithImpl<$Res> implements $ShiftReportCopyWith<$Res> {
  _$ShiftReportCopyWithImpl(this._self, this._then);

  final ShiftReport _self;
  final $Res Function(ShiftReport) _then;

  /// Create a copy of ShiftReport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? caregiverId = null,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? notes = null,
    Object? summary = null,
    Object? isSubmitted = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      caregiverId: null == caregiverId
          ? _self.caregiverId
          : caregiverId // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _self.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: freezed == endTime
          ? _self.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: null == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<HandoverNote>,
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitted: null == isSubmitted
          ? _self.isSubmitted
          : isSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [ShiftReport].
extension ShiftReportPatterns on ShiftReport {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ShiftReport value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ShiftReport() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ShiftReport value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShiftReport():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ShiftReport value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShiftReport() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String caregiverId,
            DateTime startTime,
            DateTime? endTime,
            List<HandoverNote> notes,
            String summary,
            bool isSubmitted)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ShiftReport() when $default != null:
        return $default(_that.id, _that.caregiverId, _that.startTime,
            _that.endTime, _that.notes, _that.summary, _that.isSubmitted);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String caregiverId,
            DateTime startTime,
            DateTime? endTime,
            List<HandoverNote> notes,
            String summary,
            bool isSubmitted)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShiftReport():
        return $default(_that.id, _that.caregiverId, _that.startTime,
            _that.endTime, _that.notes, _that.summary, _that.isSubmitted);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String caregiverId,
            DateTime startTime,
            DateTime? endTime,
            List<HandoverNote> notes,
            String summary,
            bool isSubmitted)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShiftReport() when $default != null:
        return $default(_that.id, _that.caregiverId, _that.startTime,
            _that.endTime, _that.notes, _that.summary, _that.isSubmitted);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ShiftReport extends ShiftReport {
  const _ShiftReport(
      {required this.id,
      required this.caregiverId,
      required this.startTime,
      this.endTime,
      final List<HandoverNote> notes = const [],
      this.summary = '',
      this.isSubmitted = false})
      : _notes = notes,
        super._();
  factory _ShiftReport.fromJson(Map<String, dynamic> json) =>
      _$ShiftReportFromJson(json);

  @override
  final String id;
  @override
  final String caregiverId;
  @override
  final DateTime startTime;
  @override
  final DateTime? endTime;
  final List<HandoverNote> _notes;
  @override
  @JsonKey()
  List<HandoverNote> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  @JsonKey()
  final String summary;
  @override
  @JsonKey()
  final bool isSubmitted;

  /// Create a copy of ShiftReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ShiftReportCopyWith<_ShiftReport> get copyWith =>
      __$ShiftReportCopyWithImpl<_ShiftReport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ShiftReportToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShiftReport &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.caregiverId, caregiverId) ||
                other.caregiverId == caregiverId) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            const DeepCollectionEquality().equals(other._notes, _notes) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.isSubmitted, isSubmitted) ||
                other.isSubmitted == isSubmitted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      caregiverId,
      startTime,
      endTime,
      const DeepCollectionEquality().hash(_notes),
      summary,
      isSubmitted);

  @override
  String toString() {
    return 'ShiftReport(id: $id, caregiverId: $caregiverId, startTime: $startTime, endTime: $endTime, notes: $notes, summary: $summary, isSubmitted: $isSubmitted)';
  }
}

/// @nodoc
abstract mixin class _$ShiftReportCopyWith<$Res>
    implements $ShiftReportCopyWith<$Res> {
  factory _$ShiftReportCopyWith(
          _ShiftReport value, $Res Function(_ShiftReport) _then) =
      __$ShiftReportCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String caregiverId,
      DateTime startTime,
      DateTime? endTime,
      List<HandoverNote> notes,
      String summary,
      bool isSubmitted});
}

/// @nodoc
class __$ShiftReportCopyWithImpl<$Res> implements _$ShiftReportCopyWith<$Res> {
  __$ShiftReportCopyWithImpl(this._self, this._then);

  final _ShiftReport _self;
  final $Res Function(_ShiftReport) _then;

  /// Create a copy of ShiftReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? caregiverId = null,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? notes = null,
    Object? summary = null,
    Object? isSubmitted = null,
  }) {
    return _then(_ShiftReport(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      caregiverId: null == caregiverId
          ? _self.caregiverId
          : caregiverId // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _self.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: freezed == endTime
          ? _self.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: null == notes
          ? _self._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<HandoverNote>,
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitted: null == isSubmitted
          ? _self.isSubmitted
          : isSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
