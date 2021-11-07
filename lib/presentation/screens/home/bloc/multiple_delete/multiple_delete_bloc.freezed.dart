// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'multiple_delete_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MultipleDeleteEventTearOff {
  const _$MultipleDeleteEventTearOff();

  _ToggleSelect toggleSelect(String id) {
    return _ToggleSelect(
      id,
    );
  }

  _Delete delete() {
    return const _Delete();
  }

  _ClearAll clearAll() {
    return const _ClearAll();
  }
}

/// @nodoc
const $MultipleDeleteEvent = _$MultipleDeleteEventTearOff();

/// @nodoc
mixin _$MultipleDeleteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) toggleSelect,
    required TResult Function() delete,
    required TResult Function() clearAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? toggleSelect,
    TResult Function()? delete,
    TResult Function()? clearAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? toggleSelect,
    TResult Function()? delete,
    TResult Function()? clearAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleSelect value) toggleSelect,
    required TResult Function(_Delete value) delete,
    required TResult Function(_ClearAll value) clearAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ToggleSelect value)? toggleSelect,
    TResult Function(_Delete value)? delete,
    TResult Function(_ClearAll value)? clearAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleSelect value)? toggleSelect,
    TResult Function(_Delete value)? delete,
    TResult Function(_ClearAll value)? clearAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultipleDeleteEventCopyWith<$Res> {
  factory $MultipleDeleteEventCopyWith(
          MultipleDeleteEvent value, $Res Function(MultipleDeleteEvent) then) =
      _$MultipleDeleteEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MultipleDeleteEventCopyWithImpl<$Res>
    implements $MultipleDeleteEventCopyWith<$Res> {
  _$MultipleDeleteEventCopyWithImpl(this._value, this._then);

  final MultipleDeleteEvent _value;
  // ignore: unused_field
  final $Res Function(MultipleDeleteEvent) _then;
}

/// @nodoc
abstract class _$ToggleSelectCopyWith<$Res> {
  factory _$ToggleSelectCopyWith(
          _ToggleSelect value, $Res Function(_ToggleSelect) then) =
      __$ToggleSelectCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$ToggleSelectCopyWithImpl<$Res>
    extends _$MultipleDeleteEventCopyWithImpl<$Res>
    implements _$ToggleSelectCopyWith<$Res> {
  __$ToggleSelectCopyWithImpl(
      _ToggleSelect _value, $Res Function(_ToggleSelect) _then)
      : super(_value, (v) => _then(v as _ToggleSelect));

  @override
  _ToggleSelect get _value => super._value as _ToggleSelect;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_ToggleSelect(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ToggleSelect implements _ToggleSelect {
  const _$_ToggleSelect(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'MultipleDeleteEvent.toggleSelect(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ToggleSelect &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$ToggleSelectCopyWith<_ToggleSelect> get copyWith =>
      __$ToggleSelectCopyWithImpl<_ToggleSelect>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) toggleSelect,
    required TResult Function() delete,
    required TResult Function() clearAll,
  }) {
    return toggleSelect(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? toggleSelect,
    TResult Function()? delete,
    TResult Function()? clearAll,
  }) {
    return toggleSelect?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? toggleSelect,
    TResult Function()? delete,
    TResult Function()? clearAll,
    required TResult orElse(),
  }) {
    if (toggleSelect != null) {
      return toggleSelect(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleSelect value) toggleSelect,
    required TResult Function(_Delete value) delete,
    required TResult Function(_ClearAll value) clearAll,
  }) {
    return toggleSelect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ToggleSelect value)? toggleSelect,
    TResult Function(_Delete value)? delete,
    TResult Function(_ClearAll value)? clearAll,
  }) {
    return toggleSelect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleSelect value)? toggleSelect,
    TResult Function(_Delete value)? delete,
    TResult Function(_ClearAll value)? clearAll,
    required TResult orElse(),
  }) {
    if (toggleSelect != null) {
      return toggleSelect(this);
    }
    return orElse();
  }
}

abstract class _ToggleSelect implements MultipleDeleteEvent {
  const factory _ToggleSelect(String id) = _$_ToggleSelect;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ToggleSelectCopyWith<_ToggleSelect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
      __$DeleteCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteCopyWithImpl<$Res>
    extends _$MultipleDeleteEventCopyWithImpl<$Res>
    implements _$DeleteCopyWith<$Res> {
  __$DeleteCopyWithImpl(_Delete _value, $Res Function(_Delete) _then)
      : super(_value, (v) => _then(v as _Delete));

  @override
  _Delete get _value => super._value as _Delete;
}

/// @nodoc

class _$_Delete implements _Delete {
  const _$_Delete();

  @override
  String toString() {
    return 'MultipleDeleteEvent.delete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Delete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) toggleSelect,
    required TResult Function() delete,
    required TResult Function() clearAll,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? toggleSelect,
    TResult Function()? delete,
    TResult Function()? clearAll,
  }) {
    return delete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? toggleSelect,
    TResult Function()? delete,
    TResult Function()? clearAll,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleSelect value) toggleSelect,
    required TResult Function(_Delete value) delete,
    required TResult Function(_ClearAll value) clearAll,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ToggleSelect value)? toggleSelect,
    TResult Function(_Delete value)? delete,
    TResult Function(_ClearAll value)? clearAll,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleSelect value)? toggleSelect,
    TResult Function(_Delete value)? delete,
    TResult Function(_ClearAll value)? clearAll,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements MultipleDeleteEvent {
  const factory _Delete() = _$_Delete;
}

/// @nodoc
abstract class _$ClearAllCopyWith<$Res> {
  factory _$ClearAllCopyWith(_ClearAll value, $Res Function(_ClearAll) then) =
      __$ClearAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClearAllCopyWithImpl<$Res>
    extends _$MultipleDeleteEventCopyWithImpl<$Res>
    implements _$ClearAllCopyWith<$Res> {
  __$ClearAllCopyWithImpl(_ClearAll _value, $Res Function(_ClearAll) _then)
      : super(_value, (v) => _then(v as _ClearAll));

  @override
  _ClearAll get _value => super._value as _ClearAll;
}

/// @nodoc

class _$_ClearAll implements _ClearAll {
  const _$_ClearAll();

  @override
  String toString() {
    return 'MultipleDeleteEvent.clearAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ClearAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) toggleSelect,
    required TResult Function() delete,
    required TResult Function() clearAll,
  }) {
    return clearAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? toggleSelect,
    TResult Function()? delete,
    TResult Function()? clearAll,
  }) {
    return clearAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? toggleSelect,
    TResult Function()? delete,
    TResult Function()? clearAll,
    required TResult orElse(),
  }) {
    if (clearAll != null) {
      return clearAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleSelect value) toggleSelect,
    required TResult Function(_Delete value) delete,
    required TResult Function(_ClearAll value) clearAll,
  }) {
    return clearAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ToggleSelect value)? toggleSelect,
    TResult Function(_Delete value)? delete,
    TResult Function(_ClearAll value)? clearAll,
  }) {
    return clearAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleSelect value)? toggleSelect,
    TResult Function(_Delete value)? delete,
    TResult Function(_ClearAll value)? clearAll,
    required TResult orElse(),
  }) {
    if (clearAll != null) {
      return clearAll(this);
    }
    return orElse();
  }
}

abstract class _ClearAll implements MultipleDeleteEvent {
  const factory _ClearAll() = _$_ClearAll;
}

/// @nodoc
class _$MultipleDeleteStateTearOff {
  const _$MultipleDeleteStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Selected selected(List<String> selectedIds) {
    return _Selected(
      selectedIds,
    );
  }

  _Deleting deleting() {
    return const _Deleting();
  }

  _DeleteSuccess success() {
    return const _DeleteSuccess();
  }

  _DeleteFailure failed() {
    return const _DeleteFailure();
  }
}

/// @nodoc
const $MultipleDeleteState = _$MultipleDeleteStateTearOff();

/// @nodoc
mixin _$MultipleDeleteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<String> selectedIds) selected,
    required TResult Function() deleting,
    required TResult Function() success,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> selectedIds)? selected,
    TResult Function()? deleting,
    TResult Function()? success,
    TResult Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> selectedIds)? selected,
    TResult Function()? deleting,
    TResult Function()? success,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Selected value) selected,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_DeleteSuccess value) success,
    required TResult Function(_DeleteFailure value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_DeleteSuccess value)? success,
    TResult Function(_DeleteFailure value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_DeleteSuccess value)? success,
    TResult Function(_DeleteFailure value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultipleDeleteStateCopyWith<$Res> {
  factory $MultipleDeleteStateCopyWith(
          MultipleDeleteState value, $Res Function(MultipleDeleteState) then) =
      _$MultipleDeleteStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MultipleDeleteStateCopyWithImpl<$Res>
    implements $MultipleDeleteStateCopyWith<$Res> {
  _$MultipleDeleteStateCopyWithImpl(this._value, this._then);

  final MultipleDeleteState _value;
  // ignore: unused_field
  final $Res Function(MultipleDeleteState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$MultipleDeleteStateCopyWithImpl<$Res>
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
    return 'MultipleDeleteState.initial()';
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
    required TResult Function(List<String> selectedIds) selected,
    required TResult Function() deleting,
    required TResult Function() success,
    required TResult Function() failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> selectedIds)? selected,
    TResult Function()? deleting,
    TResult Function()? success,
    TResult Function()? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> selectedIds)? selected,
    TResult Function()? deleting,
    TResult Function()? success,
    TResult Function()? failed,
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
    required TResult Function(_Selected value) selected,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_DeleteSuccess value) success,
    required TResult Function(_DeleteFailure value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_DeleteSuccess value)? success,
    TResult Function(_DeleteFailure value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_DeleteSuccess value)? success,
    TResult Function(_DeleteFailure value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MultipleDeleteState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$SelectedCopyWith<$Res> {
  factory _$SelectedCopyWith(_Selected value, $Res Function(_Selected) then) =
      __$SelectedCopyWithImpl<$Res>;
  $Res call({List<String> selectedIds});
}

/// @nodoc
class __$SelectedCopyWithImpl<$Res>
    extends _$MultipleDeleteStateCopyWithImpl<$Res>
    implements _$SelectedCopyWith<$Res> {
  __$SelectedCopyWithImpl(_Selected _value, $Res Function(_Selected) _then)
      : super(_value, (v) => _then(v as _Selected));

  @override
  _Selected get _value => super._value as _Selected;

  @override
  $Res call({
    Object? selectedIds = freezed,
  }) {
    return _then(_Selected(
      selectedIds == freezed
          ? _value.selectedIds
          : selectedIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_Selected implements _Selected {
  const _$_Selected(this.selectedIds);

  @override
  final List<String> selectedIds;

  @override
  String toString() {
    return 'MultipleDeleteState.selected(selectedIds: $selectedIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Selected &&
            (identical(other.selectedIds, selectedIds) ||
                const DeepCollectionEquality()
                    .equals(other.selectedIds, selectedIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(selectedIds);

  @JsonKey(ignore: true)
  @override
  _$SelectedCopyWith<_Selected> get copyWith =>
      __$SelectedCopyWithImpl<_Selected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<String> selectedIds) selected,
    required TResult Function() deleting,
    required TResult Function() success,
    required TResult Function() failed,
  }) {
    return selected(selectedIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> selectedIds)? selected,
    TResult Function()? deleting,
    TResult Function()? success,
    TResult Function()? failed,
  }) {
    return selected?.call(selectedIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> selectedIds)? selected,
    TResult Function()? deleting,
    TResult Function()? success,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(selectedIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Selected value) selected,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_DeleteSuccess value) success,
    required TResult Function(_DeleteFailure value) failed,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_DeleteSuccess value)? success,
    TResult Function(_DeleteFailure value)? failed,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_DeleteSuccess value)? success,
    TResult Function(_DeleteFailure value)? failed,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class _Selected implements MultipleDeleteState {
  const factory _Selected(List<String> selectedIds) = _$_Selected;

  List<String> get selectedIds => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SelectedCopyWith<_Selected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeletingCopyWith<$Res> {
  factory _$DeletingCopyWith(_Deleting value, $Res Function(_Deleting) then) =
      __$DeletingCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeletingCopyWithImpl<$Res>
    extends _$MultipleDeleteStateCopyWithImpl<$Res>
    implements _$DeletingCopyWith<$Res> {
  __$DeletingCopyWithImpl(_Deleting _value, $Res Function(_Deleting) _then)
      : super(_value, (v) => _then(v as _Deleting));

  @override
  _Deleting get _value => super._value as _Deleting;
}

/// @nodoc

class _$_Deleting implements _Deleting {
  const _$_Deleting();

  @override
  String toString() {
    return 'MultipleDeleteState.deleting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Deleting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<String> selectedIds) selected,
    required TResult Function() deleting,
    required TResult Function() success,
    required TResult Function() failed,
  }) {
    return deleting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> selectedIds)? selected,
    TResult Function()? deleting,
    TResult Function()? success,
    TResult Function()? failed,
  }) {
    return deleting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> selectedIds)? selected,
    TResult Function()? deleting,
    TResult Function()? success,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Selected value) selected,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_DeleteSuccess value) success,
    required TResult Function(_DeleteFailure value) failed,
  }) {
    return deleting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_DeleteSuccess value)? success,
    TResult Function(_DeleteFailure value)? failed,
  }) {
    return deleting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_DeleteSuccess value)? success,
    TResult Function(_DeleteFailure value)? failed,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting(this);
    }
    return orElse();
  }
}

abstract class _Deleting implements MultipleDeleteState {
  const factory _Deleting() = _$_Deleting;
}

/// @nodoc
abstract class _$DeleteSuccessCopyWith<$Res> {
  factory _$DeleteSuccessCopyWith(
          _DeleteSuccess value, $Res Function(_DeleteSuccess) then) =
      __$DeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteSuccessCopyWithImpl<$Res>
    extends _$MultipleDeleteStateCopyWithImpl<$Res>
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
    return 'MultipleDeleteState.success()';
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
    required TResult Function(List<String> selectedIds) selected,
    required TResult Function() deleting,
    required TResult Function() success,
    required TResult Function() failed,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> selectedIds)? selected,
    TResult Function()? deleting,
    TResult Function()? success,
    TResult Function()? failed,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> selectedIds)? selected,
    TResult Function()? deleting,
    TResult Function()? success,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Selected value) selected,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_DeleteSuccess value) success,
    required TResult Function(_DeleteFailure value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_DeleteSuccess value)? success,
    TResult Function(_DeleteFailure value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_DeleteSuccess value)? success,
    TResult Function(_DeleteFailure value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements MultipleDeleteState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}

/// @nodoc
abstract class _$DeleteFailureCopyWith<$Res> {
  factory _$DeleteFailureCopyWith(
          _DeleteFailure value, $Res Function(_DeleteFailure) then) =
      __$DeleteFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteFailureCopyWithImpl<$Res>
    extends _$MultipleDeleteStateCopyWithImpl<$Res>
    implements _$DeleteFailureCopyWith<$Res> {
  __$DeleteFailureCopyWithImpl(
      _DeleteFailure _value, $Res Function(_DeleteFailure) _then)
      : super(_value, (v) => _then(v as _DeleteFailure));

  @override
  _DeleteFailure get _value => super._value as _DeleteFailure;
}

/// @nodoc

class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure();

  @override
  String toString() {
    return 'MultipleDeleteState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<String> selectedIds) selected,
    required TResult Function() deleting,
    required TResult Function() success,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> selectedIds)? selected,
    TResult Function()? deleting,
    TResult Function()? success,
    TResult Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> selectedIds)? selected,
    TResult Function()? deleting,
    TResult Function()? success,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Selected value) selected,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_DeleteSuccess value) success,
    required TResult Function(_DeleteFailure value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_DeleteSuccess value)? success,
    TResult Function(_DeleteFailure value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_DeleteSuccess value)? success,
    TResult Function(_DeleteFailure value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements MultipleDeleteState {
  const factory _DeleteFailure() = _$_DeleteFailure;
}
