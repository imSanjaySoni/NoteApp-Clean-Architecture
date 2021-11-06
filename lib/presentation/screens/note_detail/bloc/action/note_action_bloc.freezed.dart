// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_action_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NoteActionEventTearOff {
  const _$NoteActionEventTearOff();

  _DeleteNote deleteNote(String noteId) {
    return _DeleteNote(
      noteId,
    );
  }
}

/// @nodoc
const $NoteActionEvent = _$NoteActionEventTearOff();

/// @nodoc
mixin _$NoteActionEvent {
  String get noteId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String noteId) deleteNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String noteId)? deleteNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String noteId)? deleteNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteNote value) deleteNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DeleteNote value)? deleteNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteNote value)? deleteNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteActionEventCopyWith<NoteActionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteActionEventCopyWith<$Res> {
  factory $NoteActionEventCopyWith(
          NoteActionEvent value, $Res Function(NoteActionEvent) then) =
      _$NoteActionEventCopyWithImpl<$Res>;
  $Res call({String noteId});
}

/// @nodoc
class _$NoteActionEventCopyWithImpl<$Res>
    implements $NoteActionEventCopyWith<$Res> {
  _$NoteActionEventCopyWithImpl(this._value, this._then);

  final NoteActionEvent _value;
  // ignore: unused_field
  final $Res Function(NoteActionEvent) _then;

  @override
  $Res call({
    Object? noteId = freezed,
  }) {
    return _then(_value.copyWith(
      noteId: noteId == freezed
          ? _value.noteId
          : noteId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DeleteNoteCopyWith<$Res>
    implements $NoteActionEventCopyWith<$Res> {
  factory _$DeleteNoteCopyWith(
          _DeleteNote value, $Res Function(_DeleteNote) then) =
      __$DeleteNoteCopyWithImpl<$Res>;
  @override
  $Res call({String noteId});
}

/// @nodoc
class __$DeleteNoteCopyWithImpl<$Res>
    extends _$NoteActionEventCopyWithImpl<$Res>
    implements _$DeleteNoteCopyWith<$Res> {
  __$DeleteNoteCopyWithImpl(
      _DeleteNote _value, $Res Function(_DeleteNote) _then)
      : super(_value, (v) => _then(v as _DeleteNote));

  @override
  _DeleteNote get _value => super._value as _DeleteNote;

  @override
  $Res call({
    Object? noteId = freezed,
  }) {
    return _then(_DeleteNote(
      noteId == freezed
          ? _value.noteId
          : noteId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteNote implements _DeleteNote {
  const _$_DeleteNote(this.noteId);

  @override
  final String noteId;

  @override
  String toString() {
    return 'NoteActionEvent.deleteNote(noteId: $noteId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteNote &&
            (identical(other.noteId, noteId) ||
                const DeepCollectionEquality().equals(other.noteId, noteId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(noteId);

  @JsonKey(ignore: true)
  @override
  _$DeleteNoteCopyWith<_DeleteNote> get copyWith =>
      __$DeleteNoteCopyWithImpl<_DeleteNote>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String noteId) deleteNote,
  }) {
    return deleteNote(noteId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String noteId)? deleteNote,
  }) {
    return deleteNote?.call(noteId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String noteId)? deleteNote,
    required TResult orElse(),
  }) {
    if (deleteNote != null) {
      return deleteNote(noteId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteNote value) deleteNote,
  }) {
    return deleteNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DeleteNote value)? deleteNote,
  }) {
    return deleteNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteNote value)? deleteNote,
    required TResult orElse(),
  }) {
    if (deleteNote != null) {
      return deleteNote(this);
    }
    return orElse();
  }
}

abstract class _DeleteNote implements NoteActionEvent {
  const factory _DeleteNote(String noteId) = _$_DeleteNote;

  @override
  String get noteId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeleteNoteCopyWith<_DeleteNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NoteActionStateTearOff {
  const _$NoteActionStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _DeleteSuccess deleteSuccess() {
    return const _DeleteSuccess();
  }

  _DeleteFailure deleteFailure({String? message}) {
    return _DeleteFailure(
      message: message,
    );
  }
}

/// @nodoc
const $NoteActionState = _$NoteActionStateTearOff();

/// @nodoc
mixin _$NoteActionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleteSuccess,
    required TResult Function(String? message) deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteSuccess,
    TResult Function(String? message)? deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteSuccess,
    TResult Function(String? message)? deleteFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteFailure value) deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteActionStateCopyWith<$Res> {
  factory $NoteActionStateCopyWith(
          NoteActionState value, $Res Function(NoteActionState) then) =
      _$NoteActionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteActionStateCopyWithImpl<$Res>
    implements $NoteActionStateCopyWith<$Res> {
  _$NoteActionStateCopyWithImpl(this._value, this._then);

  final NoteActionState _value;
  // ignore: unused_field
  final $Res Function(NoteActionState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$NoteActionStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NoteActionState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleteSuccess,
    required TResult Function(String? message) deleteFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteSuccess,
    TResult Function(String? message)? deleteFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteSuccess,
    TResult Function(String? message)? deleteFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteFailure value) deleteFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NoteActionState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$DeleteSuccessCopyWith<$Res> {
  factory _$DeleteSuccessCopyWith(
          _DeleteSuccess value, $Res Function(_DeleteSuccess) then) =
      __$DeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteSuccessCopyWithImpl<$Res>
    extends _$NoteActionStateCopyWithImpl<$Res>
    implements _$DeleteSuccessCopyWith<$Res> {
  __$DeleteSuccessCopyWithImpl(
      _DeleteSuccess _value, $Res Function(_DeleteSuccess) _then)
      : super(_value, (v) => _then(v as _DeleteSuccess));

  @override
  _DeleteSuccess get _value => super._value as _DeleteSuccess;
}

/// @nodoc

class _$_DeleteSuccess implements _DeleteSuccess {
  const _$_DeleteSuccess();

  @override
  String toString() {
    return 'NoteActionState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleteSuccess,
    required TResult Function(String? message) deleteFailure,
  }) {
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteSuccess,
    TResult Function(String? message)? deleteFailure,
  }) {
    return deleteSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteSuccess,
    TResult Function(String? message)? deleteFailure,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteFailure value) deleteFailure,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
  }) {
    return deleteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements NoteActionState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}

/// @nodoc
abstract class _$DeleteFailureCopyWith<$Res> {
  factory _$DeleteFailureCopyWith(
          _DeleteFailure value, $Res Function(_DeleteFailure) then) =
      __$DeleteFailureCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$DeleteFailureCopyWithImpl<$Res>
    extends _$NoteActionStateCopyWithImpl<$Res>
    implements _$DeleteFailureCopyWith<$Res> {
  __$DeleteFailureCopyWithImpl(
      _DeleteFailure _value, $Res Function(_DeleteFailure) _then)
      : super(_value, (v) => _then(v as _DeleteFailure));

  @override
  _DeleteFailure get _value => super._value as _DeleteFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_DeleteFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'NoteActionState.deleteFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      __$DeleteFailureCopyWithImpl<_DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleteSuccess,
    required TResult Function(String? message) deleteFailure,
  }) {
    return deleteFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteSuccess,
    TResult Function(String? message)? deleteFailure,
  }) {
    return deleteFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteSuccess,
    TResult Function(String? message)? deleteFailure,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteFailure value) deleteFailure,
  }) {
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
  }) {
    return deleteFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements NoteActionState {
  const factory _DeleteFailure({String? message}) = _$_DeleteFailure;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
