// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'handover_note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HandoverNote {
  String get id;
  String get text;
  NoteType get type;
  DateTime get timestamp;
  String get authorId;
  List<String> get taggedResidentIds;
  bool get isAcknowledged;

  /// Create a copy of HandoverNote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HandoverNoteCopyWith<HandoverNote> get copyWith =>
      _$HandoverNoteCopyWithImpl<HandoverNote>(
          this as HandoverNote, _$identity);

  /// Serializes this HandoverNote to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HandoverNote &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            const DeepCollectionEquality()
                .equals(other.taggedResidentIds, taggedResidentIds) &&
            (identical(other.isAcknowledged, isAcknowledged) ||
                other.isAcknowledged == isAcknowledged));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      text,
      type,
      timestamp,
      authorId,
      const DeepCollectionEquality().hash(taggedResidentIds),
      isAcknowledged);

  @override
  String toString() {
    return 'HandoverNote(id: $id, text: $text, type: $type, timestamp: $timestamp, authorId: $authorId, taggedResidentIds: $taggedResidentIds, isAcknowledged: $isAcknowledged)';
  }
}

/// @nodoc
abstract mixin class $HandoverNoteCopyWith<$Res> {
  factory $HandoverNoteCopyWith(
          HandoverNote value, $Res Function(HandoverNote) _then) =
      _$HandoverNoteCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String text,
      NoteType type,
      DateTime timestamp,
      String authorId,
      List<String> taggedResidentIds,
      bool isAcknowledged});
}

/// @nodoc
class _$HandoverNoteCopyWithImpl<$Res> implements $HandoverNoteCopyWith<$Res> {
  _$HandoverNoteCopyWithImpl(this._self, this._then);

  final HandoverNote _self;
  final $Res Function(HandoverNote) _then;

  /// Create a copy of HandoverNote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? type = null,
    Object? timestamp = null,
    Object? authorId = null,
    Object? taggedResidentIds = null,
    Object? isAcknowledged = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as NoteType,
      timestamp: null == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      authorId: null == authorId
          ? _self.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      taggedResidentIds: null == taggedResidentIds
          ? _self.taggedResidentIds
          : taggedResidentIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isAcknowledged: null == isAcknowledged
          ? _self.isAcknowledged
          : isAcknowledged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [HandoverNote].
extension HandoverNotePatterns on HandoverNote {
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
    TResult Function(_HandoverNote value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HandoverNote() when $default != null:
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
    TResult Function(_HandoverNote value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HandoverNote():
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
    TResult? Function(_HandoverNote value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HandoverNote() when $default != null:
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
            String text,
            NoteType type,
            DateTime timestamp,
            String authorId,
            List<String> taggedResidentIds,
            bool isAcknowledged)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HandoverNote() when $default != null:
        return $default(_that.id, _that.text, _that.type, _that.timestamp,
            _that.authorId, _that.taggedResidentIds, _that.isAcknowledged);
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
            String text,
            NoteType type,
            DateTime timestamp,
            String authorId,
            List<String> taggedResidentIds,
            bool isAcknowledged)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HandoverNote():
        return $default(_that.id, _that.text, _that.type, _that.timestamp,
            _that.authorId, _that.taggedResidentIds, _that.isAcknowledged);
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
            String text,
            NoteType type,
            DateTime timestamp,
            String authorId,
            List<String> taggedResidentIds,
            bool isAcknowledged)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HandoverNote() when $default != null:
        return $default(_that.id, _that.text, _that.type, _that.timestamp,
            _that.authorId, _that.taggedResidentIds, _that.isAcknowledged);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _HandoverNote extends HandoverNote {
  const _HandoverNote(
      {required this.id,
      required this.text,
      required this.type,
      required this.timestamp,
      required this.authorId,
      final List<String> taggedResidentIds = const [],
      this.isAcknowledged = false})
      : _taggedResidentIds = taggedResidentIds,
        super._();
  factory _HandoverNote.fromJson(Map<String, dynamic> json) =>
      _$HandoverNoteFromJson(json);

  @override
  final String id;
  @override
  final String text;
  @override
  final NoteType type;
  @override
  final DateTime timestamp;
  @override
  final String authorId;
  final List<String> _taggedResidentIds;
  @override
  @JsonKey()
  List<String> get taggedResidentIds {
    if (_taggedResidentIds is EqualUnmodifiableListView)
      return _taggedResidentIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_taggedResidentIds);
  }

  @override
  @JsonKey()
  final bool isAcknowledged;

  /// Create a copy of HandoverNote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HandoverNoteCopyWith<_HandoverNote> get copyWith =>
      __$HandoverNoteCopyWithImpl<_HandoverNote>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$HandoverNoteToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HandoverNote &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            const DeepCollectionEquality()
                .equals(other._taggedResidentIds, _taggedResidentIds) &&
            (identical(other.isAcknowledged, isAcknowledged) ||
                other.isAcknowledged == isAcknowledged));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      text,
      type,
      timestamp,
      authorId,
      const DeepCollectionEquality().hash(_taggedResidentIds),
      isAcknowledged);

  @override
  String toString() {
    return 'HandoverNote(id: $id, text: $text, type: $type, timestamp: $timestamp, authorId: $authorId, taggedResidentIds: $taggedResidentIds, isAcknowledged: $isAcknowledged)';
  }
}

/// @nodoc
abstract mixin class _$HandoverNoteCopyWith<$Res>
    implements $HandoverNoteCopyWith<$Res> {
  factory _$HandoverNoteCopyWith(
          _HandoverNote value, $Res Function(_HandoverNote) _then) =
      __$HandoverNoteCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String text,
      NoteType type,
      DateTime timestamp,
      String authorId,
      List<String> taggedResidentIds,
      bool isAcknowledged});
}

/// @nodoc
class __$HandoverNoteCopyWithImpl<$Res>
    implements _$HandoverNoteCopyWith<$Res> {
  __$HandoverNoteCopyWithImpl(this._self, this._then);

  final _HandoverNote _self;
  final $Res Function(_HandoverNote) _then;

  /// Create a copy of HandoverNote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? type = null,
    Object? timestamp = null,
    Object? authorId = null,
    Object? taggedResidentIds = null,
    Object? isAcknowledged = null,
  }) {
    return _then(_HandoverNote(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as NoteType,
      timestamp: null == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      authorId: null == authorId
          ? _self.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      taggedResidentIds: null == taggedResidentIds
          ? _self._taggedResidentIds
          : taggedResidentIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isAcknowledged: null == isAcknowledged
          ? _self.isAcknowledged
          : isAcknowledged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
