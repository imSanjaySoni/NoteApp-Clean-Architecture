// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_update_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddUpdateFormEventTearOff {
  const _$AddUpdateFormEventTearOff();

  _Initialize initialize(
      {String? title, String? description, Color? color, List<Todo>? todos}) {
    return _Initialize(
      title: title,
      description: description,
      color: color,
      todos: todos,
    );
  }

  _TitleChanged titleChanged(String value) {
    return _TitleChanged(
      value,
    );
  }

  _DescriptionChanged descriptionChanged(String value) {
    return _DescriptionChanged(
      value,
    );
  }

  _ColorChanged colorChanged(Color value) {
    return _ColorChanged(
      value,
    );
  }

  _AddOrUpdateNote addOrUpdateNote({String? id}) {
    return _AddOrUpdateNote(
      id: id,
    );
  }

  _AddEmptyTodo addEmptyTodo() {
    return const _AddEmptyTodo();
  }

  _DeleteTodo deleteTodo(String id) {
    return _DeleteTodo(
      id,
    );
  }

  _TodoValueChanged todoValueChanged(
      {required String value, required String id}) {
    return _TodoValueChanged(
      value: value,
      id: id,
    );
  }
}

/// @nodoc
const $AddUpdateFormEvent = _$AddUpdateFormEventTearOff();

/// @nodoc
mixin _$AddUpdateFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? title, String? description, Color? color, List<Todo>? todos)
        initialize,
    required TResult Function(String value) titleChanged,
    required TResult Function(String value) descriptionChanged,
    required TResult Function(Color value) colorChanged,
    required TResult Function(String? id) addOrUpdateNote,
    required TResult Function() addEmptyTodo,
    required TResult Function(String id) deleteTodo,
    required TResult Function(String value, String id) todoValueChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? title, String? description, Color? color,
            List<Todo>? todos)?
        initialize,
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(Color value)? colorChanged,
    TResult Function(String? id)? addOrUpdateNote,
    TResult Function()? addEmptyTodo,
    TResult Function(String id)? deleteTodo,
    TResult Function(String value, String id)? todoValueChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String? description, Color? color,
            List<Todo>? todos)?
        initialize,
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(Color value)? colorChanged,
    TResult Function(String? id)? addOrUpdateNote,
    TResult Function()? addEmptyTodo,
    TResult Function(String id)? deleteTodo,
    TResult Function(String value, String id)? todoValueChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_AddOrUpdateNote value) addOrUpdateNote,
    required TResult Function(_AddEmptyTodo value) addEmptyTodo,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_TodoValueChanged value) todoValueChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult Function(_AddEmptyTodo value)? addEmptyTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_TodoValueChanged value)? todoValueChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult Function(_AddEmptyTodo value)? addEmptyTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_TodoValueChanged value)? todoValueChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUpdateFormEventCopyWith<$Res> {
  factory $AddUpdateFormEventCopyWith(
          AddUpdateFormEvent value, $Res Function(AddUpdateFormEvent) then) =
      _$AddUpdateFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddUpdateFormEventCopyWithImpl<$Res>
    implements $AddUpdateFormEventCopyWith<$Res> {
  _$AddUpdateFormEventCopyWithImpl(this._value, this._then);

  final AddUpdateFormEvent _value;
  // ignore: unused_field
  final $Res Function(AddUpdateFormEvent) _then;
}

/// @nodoc
abstract class _$InitializeCopyWith<$Res> {
  factory _$InitializeCopyWith(
          _Initialize value, $Res Function(_Initialize) then) =
      __$InitializeCopyWithImpl<$Res>;
  $Res call(
      {String? title, String? description, Color? color, List<Todo>? todos});
}

/// @nodoc
class __$InitializeCopyWithImpl<$Res>
    extends _$AddUpdateFormEventCopyWithImpl<$Res>
    implements _$InitializeCopyWith<$Res> {
  __$InitializeCopyWithImpl(
      _Initialize _value, $Res Function(_Initialize) _then)
      : super(_value, (v) => _then(v as _Initialize));

  @override
  _Initialize get _value => super._value as _Initialize;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? color = freezed,
    Object? todos = freezed,
  }) {
    return _then(_Initialize(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>?,
    ));
  }
}

/// @nodoc

class _$_Initialize implements _Initialize {
  const _$_Initialize({this.title, this.description, this.color, this.todos});

  @override
  final String? title;
  @override
  final String? description;
  @override
  final Color? color;
  @override
  final List<Todo>? todos;

  @override
  String toString() {
    return 'AddUpdateFormEvent.initialize(title: $title, description: $description, color: $color, todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialize &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(todos);

  @JsonKey(ignore: true)
  @override
  _$InitializeCopyWith<_Initialize> get copyWith =>
      __$InitializeCopyWithImpl<_Initialize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? title, String? description, Color? color, List<Todo>? todos)
        initialize,
    required TResult Function(String value) titleChanged,
    required TResult Function(String value) descriptionChanged,
    required TResult Function(Color value) colorChanged,
    required TResult Function(String? id) addOrUpdateNote,
    required TResult Function() addEmptyTodo,
    required TResult Function(String id) deleteTodo,
    required TResult Function(String value, String id) todoValueChanged,
  }) {
    return initialize(title, description, color, todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? title, String? description, Color? color,
            List<Todo>? todos)?
        initialize,
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(Color value)? colorChanged,
    TResult Function(String? id)? addOrUpdateNote,
    TResult Function()? addEmptyTodo,
    TResult Function(String id)? deleteTodo,
    TResult Function(String value, String id)? todoValueChanged,
  }) {
    return initialize?.call(title, description, color, todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String? description, Color? color,
            List<Todo>? todos)?
        initialize,
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(Color value)? colorChanged,
    TResult Function(String? id)? addOrUpdateNote,
    TResult Function()? addEmptyTodo,
    TResult Function(String id)? deleteTodo,
    TResult Function(String value, String id)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(title, description, color, todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_AddOrUpdateNote value) addOrUpdateNote,
    required TResult Function(_AddEmptyTodo value) addEmptyTodo,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_TodoValueChanged value) todoValueChanged,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult Function(_AddEmptyTodo value)? addEmptyTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_TodoValueChanged value)? todoValueChanged,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult Function(_AddEmptyTodo value)? addEmptyTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_TodoValueChanged value)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements AddUpdateFormEvent {
  const factory _Initialize(
      {String? title,
      String? description,
      Color? color,
      List<Todo>? todos}) = _$_Initialize;

  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  Color? get color => throw _privateConstructorUsedError;
  List<Todo>? get todos => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializeCopyWith<_Initialize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TitleChangedCopyWith<$Res> {
  factory _$TitleChangedCopyWith(
          _TitleChanged value, $Res Function(_TitleChanged) then) =
      __$TitleChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$TitleChangedCopyWithImpl<$Res>
    extends _$AddUpdateFormEventCopyWithImpl<$Res>
    implements _$TitleChangedCopyWith<$Res> {
  __$TitleChangedCopyWithImpl(
      _TitleChanged _value, $Res Function(_TitleChanged) _then)
      : super(_value, (v) => _then(v as _TitleChanged));

  @override
  _TitleChanged get _value => super._value as _TitleChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_TitleChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TitleChanged implements _TitleChanged {
  const _$_TitleChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'AddUpdateFormEvent.titleChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TitleChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      __$TitleChangedCopyWithImpl<_TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? title, String? description, Color? color, List<Todo>? todos)
        initialize,
    required TResult Function(String value) titleChanged,
    required TResult Function(String value) descriptionChanged,
    required TResult Function(Color value) colorChanged,
    required TResult Function(String? id) addOrUpdateNote,
    required TResult Function() addEmptyTodo,
    required TResult Function(String id) deleteTodo,
    required TResult Function(String value, String id) todoValueChanged,
  }) {
    return titleChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? title, String? description, Color? color,
            List<Todo>? todos)?
        initialize,
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(Color value)? colorChanged,
    TResult Function(String? id)? addOrUpdateNote,
    TResult Function()? addEmptyTodo,
    TResult Function(String id)? deleteTodo,
    TResult Function(String value, String id)? todoValueChanged,
  }) {
    return titleChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String? description, Color? color,
            List<Todo>? todos)?
        initialize,
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(Color value)? colorChanged,
    TResult Function(String? id)? addOrUpdateNote,
    TResult Function()? addEmptyTodo,
    TResult Function(String id)? deleteTodo,
    TResult Function(String value, String id)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_AddOrUpdateNote value) addOrUpdateNote,
    required TResult Function(_AddEmptyTodo value) addEmptyTodo,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_TodoValueChanged value) todoValueChanged,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult Function(_AddEmptyTodo value)? addEmptyTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_TodoValueChanged value)? todoValueChanged,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult Function(_AddEmptyTodo value)? addEmptyTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_TodoValueChanged value)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements AddUpdateFormEvent {
  const factory _TitleChanged(String value) = _$_TitleChanged;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DescriptionChangedCopyWith<$Res> {
  factory _$DescriptionChangedCopyWith(
          _DescriptionChanged value, $Res Function(_DescriptionChanged) then) =
      __$DescriptionChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$DescriptionChangedCopyWithImpl<$Res>
    extends _$AddUpdateFormEventCopyWithImpl<$Res>
    implements _$DescriptionChangedCopyWith<$Res> {
  __$DescriptionChangedCopyWithImpl(
      _DescriptionChanged _value, $Res Function(_DescriptionChanged) _then)
      : super(_value, (v) => _then(v as _DescriptionChanged));

  @override
  _DescriptionChanged get _value => super._value as _DescriptionChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_DescriptionChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DescriptionChanged implements _DescriptionChanged {
  const _$_DescriptionChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'AddUpdateFormEvent.descriptionChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DescriptionChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      __$DescriptionChangedCopyWithImpl<_DescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? title, String? description, Color? color, List<Todo>? todos)
        initialize,
    required TResult Function(String value) titleChanged,
    required TResult Function(String value) descriptionChanged,
    required TResult Function(Color value) colorChanged,
    required TResult Function(String? id) addOrUpdateNote,
    required TResult Function() addEmptyTodo,
    required TResult Function(String id) deleteTodo,
    required TResult Function(String value, String id) todoValueChanged,
  }) {
    return descriptionChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? title, String? description, Color? color,
            List<Todo>? todos)?
        initialize,
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(Color value)? colorChanged,
    TResult Function(String? id)? addOrUpdateNote,
    TResult Function()? addEmptyTodo,
    TResult Function(String id)? deleteTodo,
    TResult Function(String value, String id)? todoValueChanged,
  }) {
    return descriptionChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String? description, Color? color,
            List<Todo>? todos)?
        initialize,
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(Color value)? colorChanged,
    TResult Function(String? id)? addOrUpdateNote,
    TResult Function()? addEmptyTodo,
    TResult Function(String id)? deleteTodo,
    TResult Function(String value, String id)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_AddOrUpdateNote value) addOrUpdateNote,
    required TResult Function(_AddEmptyTodo value) addEmptyTodo,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_TodoValueChanged value) todoValueChanged,
  }) {
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult Function(_AddEmptyTodo value)? addEmptyTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_TodoValueChanged value)? todoValueChanged,
  }) {
    return descriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult Function(_AddEmptyTodo value)? addEmptyTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_TodoValueChanged value)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements AddUpdateFormEvent {
  const factory _DescriptionChanged(String value) = _$_DescriptionChanged;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ColorChangedCopyWith<$Res> {
  factory _$ColorChangedCopyWith(
          _ColorChanged value, $Res Function(_ColorChanged) then) =
      __$ColorChangedCopyWithImpl<$Res>;
  $Res call({Color value});
}

/// @nodoc
class __$ColorChangedCopyWithImpl<$Res>
    extends _$AddUpdateFormEventCopyWithImpl<$Res>
    implements _$ColorChangedCopyWith<$Res> {
  __$ColorChangedCopyWithImpl(
      _ColorChanged _value, $Res Function(_ColorChanged) _then)
      : super(_value, (v) => _then(v as _ColorChanged));

  @override
  _ColorChanged get _value => super._value as _ColorChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ColorChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_ColorChanged implements _ColorChanged {
  const _$_ColorChanged(this.value);

  @override
  final Color value;

  @override
  String toString() {
    return 'AddUpdateFormEvent.colorChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ColorChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$ColorChangedCopyWith<_ColorChanged> get copyWith =>
      __$ColorChangedCopyWithImpl<_ColorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? title, String? description, Color? color, List<Todo>? todos)
        initialize,
    required TResult Function(String value) titleChanged,
    required TResult Function(String value) descriptionChanged,
    required TResult Function(Color value) colorChanged,
    required TResult Function(String? id) addOrUpdateNote,
    required TResult Function() addEmptyTodo,
    required TResult Function(String id) deleteTodo,
    required TResult Function(String value, String id) todoValueChanged,
  }) {
    return colorChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? title, String? description, Color? color,
            List<Todo>? todos)?
        initialize,
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(Color value)? colorChanged,
    TResult Function(String? id)? addOrUpdateNote,
    TResult Function()? addEmptyTodo,
    TResult Function(String id)? deleteTodo,
    TResult Function(String value, String id)? todoValueChanged,
  }) {
    return colorChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String? description, Color? color,
            List<Todo>? todos)?
        initialize,
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(Color value)? colorChanged,
    TResult Function(String? id)? addOrUpdateNote,
    TResult Function()? addEmptyTodo,
    TResult Function(String id)? deleteTodo,
    TResult Function(String value, String id)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (colorChanged != null) {
      return colorChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_AddOrUpdateNote value) addOrUpdateNote,
    required TResult Function(_AddEmptyTodo value) addEmptyTodo,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_TodoValueChanged value) todoValueChanged,
  }) {
    return colorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult Function(_AddEmptyTodo value)? addEmptyTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_TodoValueChanged value)? todoValueChanged,
  }) {
    return colorChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult Function(_AddEmptyTodo value)? addEmptyTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_TodoValueChanged value)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (colorChanged != null) {
      return colorChanged(this);
    }
    return orElse();
  }
}

abstract class _ColorChanged implements AddUpdateFormEvent {
  const factory _ColorChanged(Color value) = _$_ColorChanged;

  Color get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ColorChangedCopyWith<_ColorChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddOrUpdateNoteCopyWith<$Res> {
  factory _$AddOrUpdateNoteCopyWith(
          _AddOrUpdateNote value, $Res Function(_AddOrUpdateNote) then) =
      __$AddOrUpdateNoteCopyWithImpl<$Res>;
  $Res call({String? id});
}

/// @nodoc
class __$AddOrUpdateNoteCopyWithImpl<$Res>
    extends _$AddUpdateFormEventCopyWithImpl<$Res>
    implements _$AddOrUpdateNoteCopyWith<$Res> {
  __$AddOrUpdateNoteCopyWithImpl(
      _AddOrUpdateNote _value, $Res Function(_AddOrUpdateNote) _then)
      : super(_value, (v) => _then(v as _AddOrUpdateNote));

  @override
  _AddOrUpdateNote get _value => super._value as _AddOrUpdateNote;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_AddOrUpdateNote(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AddOrUpdateNote implements _AddOrUpdateNote {
  const _$_AddOrUpdateNote({this.id});

  @override
  final String? id;

  @override
  String toString() {
    return 'AddUpdateFormEvent.addOrUpdateNote(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddOrUpdateNote &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$AddOrUpdateNoteCopyWith<_AddOrUpdateNote> get copyWith =>
      __$AddOrUpdateNoteCopyWithImpl<_AddOrUpdateNote>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? title, String? description, Color? color, List<Todo>? todos)
        initialize,
    required TResult Function(String value) titleChanged,
    required TResult Function(String value) descriptionChanged,
    required TResult Function(Color value) colorChanged,
    required TResult Function(String? id) addOrUpdateNote,
    required TResult Function() addEmptyTodo,
    required TResult Function(String id) deleteTodo,
    required TResult Function(String value, String id) todoValueChanged,
  }) {
    return addOrUpdateNote(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? title, String? description, Color? color,
            List<Todo>? todos)?
        initialize,
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(Color value)? colorChanged,
    TResult Function(String? id)? addOrUpdateNote,
    TResult Function()? addEmptyTodo,
    TResult Function(String id)? deleteTodo,
    TResult Function(String value, String id)? todoValueChanged,
  }) {
    return addOrUpdateNote?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String? description, Color? color,
            List<Todo>? todos)?
        initialize,
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(Color value)? colorChanged,
    TResult Function(String? id)? addOrUpdateNote,
    TResult Function()? addEmptyTodo,
    TResult Function(String id)? deleteTodo,
    TResult Function(String value, String id)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (addOrUpdateNote != null) {
      return addOrUpdateNote(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_AddOrUpdateNote value) addOrUpdateNote,
    required TResult Function(_AddEmptyTodo value) addEmptyTodo,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_TodoValueChanged value) todoValueChanged,
  }) {
    return addOrUpdateNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult Function(_AddEmptyTodo value)? addEmptyTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_TodoValueChanged value)? todoValueChanged,
  }) {
    return addOrUpdateNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult Function(_AddEmptyTodo value)? addEmptyTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_TodoValueChanged value)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (addOrUpdateNote != null) {
      return addOrUpdateNote(this);
    }
    return orElse();
  }
}

abstract class _AddOrUpdateNote implements AddUpdateFormEvent {
  const factory _AddOrUpdateNote({String? id}) = _$_AddOrUpdateNote;

  String? get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddOrUpdateNoteCopyWith<_AddOrUpdateNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddEmptyTodoCopyWith<$Res> {
  factory _$AddEmptyTodoCopyWith(
          _AddEmptyTodo value, $Res Function(_AddEmptyTodo) then) =
      __$AddEmptyTodoCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddEmptyTodoCopyWithImpl<$Res>
    extends _$AddUpdateFormEventCopyWithImpl<$Res>
    implements _$AddEmptyTodoCopyWith<$Res> {
  __$AddEmptyTodoCopyWithImpl(
      _AddEmptyTodo _value, $Res Function(_AddEmptyTodo) _then)
      : super(_value, (v) => _then(v as _AddEmptyTodo));

  @override
  _AddEmptyTodo get _value => super._value as _AddEmptyTodo;
}

/// @nodoc

class _$_AddEmptyTodo implements _AddEmptyTodo {
  const _$_AddEmptyTodo();

  @override
  String toString() {
    return 'AddUpdateFormEvent.addEmptyTodo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AddEmptyTodo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? title, String? description, Color? color, List<Todo>? todos)
        initialize,
    required TResult Function(String value) titleChanged,
    required TResult Function(String value) descriptionChanged,
    required TResult Function(Color value) colorChanged,
    required TResult Function(String? id) addOrUpdateNote,
    required TResult Function() addEmptyTodo,
    required TResult Function(String id) deleteTodo,
    required TResult Function(String value, String id) todoValueChanged,
  }) {
    return addEmptyTodo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? title, String? description, Color? color,
            List<Todo>? todos)?
        initialize,
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(Color value)? colorChanged,
    TResult Function(String? id)? addOrUpdateNote,
    TResult Function()? addEmptyTodo,
    TResult Function(String id)? deleteTodo,
    TResult Function(String value, String id)? todoValueChanged,
  }) {
    return addEmptyTodo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String? description, Color? color,
            List<Todo>? todos)?
        initialize,
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(Color value)? colorChanged,
    TResult Function(String? id)? addOrUpdateNote,
    TResult Function()? addEmptyTodo,
    TResult Function(String id)? deleteTodo,
    TResult Function(String value, String id)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (addEmptyTodo != null) {
      return addEmptyTodo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_AddOrUpdateNote value) addOrUpdateNote,
    required TResult Function(_AddEmptyTodo value) addEmptyTodo,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_TodoValueChanged value) todoValueChanged,
  }) {
    return addEmptyTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult Function(_AddEmptyTodo value)? addEmptyTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_TodoValueChanged value)? todoValueChanged,
  }) {
    return addEmptyTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult Function(_AddEmptyTodo value)? addEmptyTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_TodoValueChanged value)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (addEmptyTodo != null) {
      return addEmptyTodo(this);
    }
    return orElse();
  }
}

abstract class _AddEmptyTodo implements AddUpdateFormEvent {
  const factory _AddEmptyTodo() = _$_AddEmptyTodo;
}

/// @nodoc
abstract class _$DeleteTodoCopyWith<$Res> {
  factory _$DeleteTodoCopyWith(
          _DeleteTodo value, $Res Function(_DeleteTodo) then) =
      __$DeleteTodoCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$DeleteTodoCopyWithImpl<$Res>
    extends _$AddUpdateFormEventCopyWithImpl<$Res>
    implements _$DeleteTodoCopyWith<$Res> {
  __$DeleteTodoCopyWithImpl(
      _DeleteTodo _value, $Res Function(_DeleteTodo) _then)
      : super(_value, (v) => _then(v as _DeleteTodo));

  @override
  _DeleteTodo get _value => super._value as _DeleteTodo;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_DeleteTodo(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteTodo implements _DeleteTodo {
  const _$_DeleteTodo(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'AddUpdateFormEvent.deleteTodo(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteTodo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$DeleteTodoCopyWith<_DeleteTodo> get copyWith =>
      __$DeleteTodoCopyWithImpl<_DeleteTodo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? title, String? description, Color? color, List<Todo>? todos)
        initialize,
    required TResult Function(String value) titleChanged,
    required TResult Function(String value) descriptionChanged,
    required TResult Function(Color value) colorChanged,
    required TResult Function(String? id) addOrUpdateNote,
    required TResult Function() addEmptyTodo,
    required TResult Function(String id) deleteTodo,
    required TResult Function(String value, String id) todoValueChanged,
  }) {
    return deleteTodo(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? title, String? description, Color? color,
            List<Todo>? todos)?
        initialize,
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(Color value)? colorChanged,
    TResult Function(String? id)? addOrUpdateNote,
    TResult Function()? addEmptyTodo,
    TResult Function(String id)? deleteTodo,
    TResult Function(String value, String id)? todoValueChanged,
  }) {
    return deleteTodo?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String? description, Color? color,
            List<Todo>? todos)?
        initialize,
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(Color value)? colorChanged,
    TResult Function(String? id)? addOrUpdateNote,
    TResult Function()? addEmptyTodo,
    TResult Function(String id)? deleteTodo,
    TResult Function(String value, String id)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (deleteTodo != null) {
      return deleteTodo(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_AddOrUpdateNote value) addOrUpdateNote,
    required TResult Function(_AddEmptyTodo value) addEmptyTodo,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_TodoValueChanged value) todoValueChanged,
  }) {
    return deleteTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult Function(_AddEmptyTodo value)? addEmptyTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_TodoValueChanged value)? todoValueChanged,
  }) {
    return deleteTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult Function(_AddEmptyTodo value)? addEmptyTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_TodoValueChanged value)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (deleteTodo != null) {
      return deleteTodo(this);
    }
    return orElse();
  }
}

abstract class _DeleteTodo implements AddUpdateFormEvent {
  const factory _DeleteTodo(String id) = _$_DeleteTodo;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteTodoCopyWith<_DeleteTodo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TodoValueChangedCopyWith<$Res> {
  factory _$TodoValueChangedCopyWith(
          _TodoValueChanged value, $Res Function(_TodoValueChanged) then) =
      __$TodoValueChangedCopyWithImpl<$Res>;
  $Res call({String value, String id});
}

/// @nodoc
class __$TodoValueChangedCopyWithImpl<$Res>
    extends _$AddUpdateFormEventCopyWithImpl<$Res>
    implements _$TodoValueChangedCopyWith<$Res> {
  __$TodoValueChangedCopyWithImpl(
      _TodoValueChanged _value, $Res Function(_TodoValueChanged) _then)
      : super(_value, (v) => _then(v as _TodoValueChanged));

  @override
  _TodoValueChanged get _value => super._value as _TodoValueChanged;

  @override
  $Res call({
    Object? value = freezed,
    Object? id = freezed,
  }) {
    return _then(_TodoValueChanged(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TodoValueChanged implements _TodoValueChanged {
  const _$_TodoValueChanged({required this.value, required this.id});

  @override
  final String value;
  @override
  final String id;

  @override
  String toString() {
    return 'AddUpdateFormEvent.todoValueChanged(value: $value, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoValueChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$TodoValueChangedCopyWith<_TodoValueChanged> get copyWith =>
      __$TodoValueChangedCopyWithImpl<_TodoValueChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? title, String? description, Color? color, List<Todo>? todos)
        initialize,
    required TResult Function(String value) titleChanged,
    required TResult Function(String value) descriptionChanged,
    required TResult Function(Color value) colorChanged,
    required TResult Function(String? id) addOrUpdateNote,
    required TResult Function() addEmptyTodo,
    required TResult Function(String id) deleteTodo,
    required TResult Function(String value, String id) todoValueChanged,
  }) {
    return todoValueChanged(value, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? title, String? description, Color? color,
            List<Todo>? todos)?
        initialize,
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(Color value)? colorChanged,
    TResult Function(String? id)? addOrUpdateNote,
    TResult Function()? addEmptyTodo,
    TResult Function(String id)? deleteTodo,
    TResult Function(String value, String id)? todoValueChanged,
  }) {
    return todoValueChanged?.call(value, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String? description, Color? color,
            List<Todo>? todos)?
        initialize,
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(Color value)? colorChanged,
    TResult Function(String? id)? addOrUpdateNote,
    TResult Function()? addEmptyTodo,
    TResult Function(String id)? deleteTodo,
    TResult Function(String value, String id)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (todoValueChanged != null) {
      return todoValueChanged(value, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_AddOrUpdateNote value) addOrUpdateNote,
    required TResult Function(_AddEmptyTodo value) addEmptyTodo,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_TodoValueChanged value) todoValueChanged,
  }) {
    return todoValueChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult Function(_AddEmptyTodo value)? addEmptyTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_TodoValueChanged value)? todoValueChanged,
  }) {
    return todoValueChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult Function(_AddEmptyTodo value)? addEmptyTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_TodoValueChanged value)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (todoValueChanged != null) {
      return todoValueChanged(this);
    }
    return orElse();
  }
}

abstract class _TodoValueChanged implements AddUpdateFormEvent {
  const factory _TodoValueChanged({required String value, required String id}) =
      _$_TodoValueChanged;

  String get value => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TodoValueChangedCopyWith<_TodoValueChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AddUpdateFormStateTearOff {
  const _$AddUpdateFormStateTearOff();

  _AddUpdateFormState call(
      {String? title,
      String? description,
      Color? selectedColor,
      List<Todo> todos = const []}) {
    return _AddUpdateFormState(
      title: title,
      description: description,
      selectedColor: selectedColor,
      todos: todos,
    );
  }
}

/// @nodoc
const $AddUpdateFormState = _$AddUpdateFormStateTearOff();

/// @nodoc
mixin _$AddUpdateFormState {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  Color? get selectedColor => throw _privateConstructorUsedError;
  List<Todo> get todos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddUpdateFormStateCopyWith<AddUpdateFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUpdateFormStateCopyWith<$Res> {
  factory $AddUpdateFormStateCopyWith(
          AddUpdateFormState value, $Res Function(AddUpdateFormState) then) =
      _$AddUpdateFormStateCopyWithImpl<$Res>;
  $Res call(
      {String? title,
      String? description,
      Color? selectedColor,
      List<Todo> todos});
}

/// @nodoc
class _$AddUpdateFormStateCopyWithImpl<$Res>
    implements $AddUpdateFormStateCopyWith<$Res> {
  _$AddUpdateFormStateCopyWithImpl(this._value, this._then);

  final AddUpdateFormState _value;
  // ignore: unused_field
  final $Res Function(AddUpdateFormState) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? selectedColor = freezed,
    Object? todos = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedColor: selectedColor == freezed
          ? _value.selectedColor
          : selectedColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc
abstract class _$AddUpdateFormStateCopyWith<$Res>
    implements $AddUpdateFormStateCopyWith<$Res> {
  factory _$AddUpdateFormStateCopyWith(
          _AddUpdateFormState value, $Res Function(_AddUpdateFormState) then) =
      __$AddUpdateFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
      String? description,
      Color? selectedColor,
      List<Todo> todos});
}

/// @nodoc
class __$AddUpdateFormStateCopyWithImpl<$Res>
    extends _$AddUpdateFormStateCopyWithImpl<$Res>
    implements _$AddUpdateFormStateCopyWith<$Res> {
  __$AddUpdateFormStateCopyWithImpl(
      _AddUpdateFormState _value, $Res Function(_AddUpdateFormState) _then)
      : super(_value, (v) => _then(v as _AddUpdateFormState));

  @override
  _AddUpdateFormState get _value => super._value as _AddUpdateFormState;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? selectedColor = freezed,
    Object? todos = freezed,
  }) {
    return _then(_AddUpdateFormState(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedColor: selectedColor == freezed
          ? _value.selectedColor
          : selectedColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$_AddUpdateFormState extends _AddUpdateFormState {
  _$_AddUpdateFormState(
      {this.title, this.description, this.selectedColor, this.todos = const []})
      : super._();

  @override
  final String? title;
  @override
  final String? description;
  @override
  final Color? selectedColor;
  @JsonKey(defaultValue: const [])
  @override
  final List<Todo> todos;

  @override
  String toString() {
    return 'AddUpdateFormState(title: $title, description: $description, selectedColor: $selectedColor, todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddUpdateFormState &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.selectedColor, selectedColor) ||
                const DeepCollectionEquality()
                    .equals(other.selectedColor, selectedColor)) &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(selectedColor) ^
      const DeepCollectionEquality().hash(todos);

  @JsonKey(ignore: true)
  @override
  _$AddUpdateFormStateCopyWith<_AddUpdateFormState> get copyWith =>
      __$AddUpdateFormStateCopyWithImpl<_AddUpdateFormState>(this, _$identity);
}

abstract class _AddUpdateFormState extends AddUpdateFormState {
  factory _AddUpdateFormState(
      {String? title,
      String? description,
      Color? selectedColor,
      List<Todo> todos}) = _$_AddUpdateFormState;
  _AddUpdateFormState._() : super._();

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  Color? get selectedColor => throw _privateConstructorUsedError;
  @override
  List<Todo> get todos => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddUpdateFormStateCopyWith<_AddUpdateFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
