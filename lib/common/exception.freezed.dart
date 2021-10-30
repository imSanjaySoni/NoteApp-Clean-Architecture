// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NoteAppExceptionTearOff {
  const _$NoteAppExceptionTearOff();

  NoRecordsException noRecords() {
    return NoRecordsException();
  }

  EmptyException empty(String message) {
    return EmptyException(
      message,
    );
  }

  FailedToParseException failedToParse() {
    return FailedToParseException();
  }
}

/// @nodoc
const $NoteAppException = _$NoteAppExceptionTearOff();

/// @nodoc
mixin _$NoteAppException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noRecords,
    required TResult Function(String message) empty,
    required TResult Function() failedToParse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noRecords,
    TResult Function(String message)? empty,
    TResult Function()? failedToParse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noRecords,
    TResult Function(String message)? empty,
    TResult Function()? failedToParse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoRecordsException value) noRecords,
    required TResult Function(EmptyException value) empty,
    required TResult Function(FailedToParseException value) failedToParse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NoRecordsException value)? noRecords,
    TResult Function(EmptyException value)? empty,
    TResult Function(FailedToParseException value)? failedToParse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoRecordsException value)? noRecords,
    TResult Function(EmptyException value)? empty,
    TResult Function(FailedToParseException value)? failedToParse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteAppExceptionCopyWith<$Res> {
  factory $NoteAppExceptionCopyWith(
          NoteAppException value, $Res Function(NoteAppException) then) =
      _$NoteAppExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteAppExceptionCopyWithImpl<$Res>
    implements $NoteAppExceptionCopyWith<$Res> {
  _$NoteAppExceptionCopyWithImpl(this._value, this._then);

  final NoteAppException _value;
  // ignore: unused_field
  final $Res Function(NoteAppException) _then;
}

/// @nodoc
abstract class $NoRecordsExceptionCopyWith<$Res> {
  factory $NoRecordsExceptionCopyWith(
          NoRecordsException value, $Res Function(NoRecordsException) then) =
      _$NoRecordsExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoRecordsExceptionCopyWithImpl<$Res>
    extends _$NoteAppExceptionCopyWithImpl<$Res>
    implements $NoRecordsExceptionCopyWith<$Res> {
  _$NoRecordsExceptionCopyWithImpl(
      NoRecordsException _value, $Res Function(NoRecordsException) _then)
      : super(_value, (v) => _then(v as NoRecordsException));

  @override
  NoRecordsException get _value => super._value as NoRecordsException;
}

/// @nodoc

class _$NoRecordsException implements NoRecordsException {
  _$NoRecordsException();

  @override
  String toString() {
    return 'NoteAppException.noRecords()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoRecordsException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noRecords,
    required TResult Function(String message) empty,
    required TResult Function() failedToParse,
  }) {
    return noRecords();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noRecords,
    TResult Function(String message)? empty,
    TResult Function()? failedToParse,
  }) {
    return noRecords?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noRecords,
    TResult Function(String message)? empty,
    TResult Function()? failedToParse,
    required TResult orElse(),
  }) {
    if (noRecords != null) {
      return noRecords();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoRecordsException value) noRecords,
    required TResult Function(EmptyException value) empty,
    required TResult Function(FailedToParseException value) failedToParse,
  }) {
    return noRecords(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NoRecordsException value)? noRecords,
    TResult Function(EmptyException value)? empty,
    TResult Function(FailedToParseException value)? failedToParse,
  }) {
    return noRecords?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoRecordsException value)? noRecords,
    TResult Function(EmptyException value)? empty,
    TResult Function(FailedToParseException value)? failedToParse,
    required TResult orElse(),
  }) {
    if (noRecords != null) {
      return noRecords(this);
    }
    return orElse();
  }
}

abstract class NoRecordsException implements NoteAppException {
  factory NoRecordsException() = _$NoRecordsException;
}

/// @nodoc
abstract class $EmptyExceptionCopyWith<$Res> {
  factory $EmptyExceptionCopyWith(
          EmptyException value, $Res Function(EmptyException) then) =
      _$EmptyExceptionCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$EmptyExceptionCopyWithImpl<$Res>
    extends _$NoteAppExceptionCopyWithImpl<$Res>
    implements $EmptyExceptionCopyWith<$Res> {
  _$EmptyExceptionCopyWithImpl(
      EmptyException _value, $Res Function(EmptyException) _then)
      : super(_value, (v) => _then(v as EmptyException));

  @override
  EmptyException get _value => super._value as EmptyException;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(EmptyException(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmptyException implements EmptyException {
  _$EmptyException(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NoteAppException.empty(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmptyException &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $EmptyExceptionCopyWith<EmptyException> get copyWith =>
      _$EmptyExceptionCopyWithImpl<EmptyException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noRecords,
    required TResult Function(String message) empty,
    required TResult Function() failedToParse,
  }) {
    return empty(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noRecords,
    TResult Function(String message)? empty,
    TResult Function()? failedToParse,
  }) {
    return empty?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noRecords,
    TResult Function(String message)? empty,
    TResult Function()? failedToParse,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoRecordsException value) noRecords,
    required TResult Function(EmptyException value) empty,
    required TResult Function(FailedToParseException value) failedToParse,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NoRecordsException value)? noRecords,
    TResult Function(EmptyException value)? empty,
    TResult Function(FailedToParseException value)? failedToParse,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoRecordsException value)? noRecords,
    TResult Function(EmptyException value)? empty,
    TResult Function(FailedToParseException value)? failedToParse,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyException implements NoteAppException {
  factory EmptyException(String message) = _$EmptyException;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmptyExceptionCopyWith<EmptyException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailedToParseExceptionCopyWith<$Res> {
  factory $FailedToParseExceptionCopyWith(FailedToParseException value,
          $Res Function(FailedToParseException) then) =
      _$FailedToParseExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailedToParseExceptionCopyWithImpl<$Res>
    extends _$NoteAppExceptionCopyWithImpl<$Res>
    implements $FailedToParseExceptionCopyWith<$Res> {
  _$FailedToParseExceptionCopyWithImpl(FailedToParseException _value,
      $Res Function(FailedToParseException) _then)
      : super(_value, (v) => _then(v as FailedToParseException));

  @override
  FailedToParseException get _value => super._value as FailedToParseException;
}

/// @nodoc

class _$FailedToParseException implements FailedToParseException {
  _$FailedToParseException();

  @override
  String toString() {
    return 'NoteAppException.failedToParse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FailedToParseException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noRecords,
    required TResult Function(String message) empty,
    required TResult Function() failedToParse,
  }) {
    return failedToParse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noRecords,
    TResult Function(String message)? empty,
    TResult Function()? failedToParse,
  }) {
    return failedToParse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noRecords,
    TResult Function(String message)? empty,
    TResult Function()? failedToParse,
    required TResult orElse(),
  }) {
    if (failedToParse != null) {
      return failedToParse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoRecordsException value) noRecords,
    required TResult Function(EmptyException value) empty,
    required TResult Function(FailedToParseException value) failedToParse,
  }) {
    return failedToParse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NoRecordsException value)? noRecords,
    TResult Function(EmptyException value)? empty,
    TResult Function(FailedToParseException value)? failedToParse,
  }) {
    return failedToParse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoRecordsException value)? noRecords,
    TResult Function(EmptyException value)? empty,
    TResult Function(FailedToParseException value)? failedToParse,
    required TResult orElse(),
  }) {
    if (failedToParse != null) {
      return failedToParse(this);
    }
    return orElse();
  }
}

abstract class FailedToParseException implements NoteAppException {
  factory FailedToParseException() = _$FailedToParseException;
}
