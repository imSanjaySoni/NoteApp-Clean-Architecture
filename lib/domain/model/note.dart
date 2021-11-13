import 'dart:ui' show Color;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

part 'note.freezed.dart';

@freezed
class Note with _$Note {
  Note._();

  factory Note({
    String? id,
    String? title,
    String? description,
    Color? color,
    DateTime? dateTime,
    @Default([]) List<Todo> todo,
  }) = _Note;

  final DateFormat _formatter = DateFormat('MMMM dd, yyyy');
  String get date => dateTime != null ? _formatter.format(dateTime!) : '';

  final DateFormat _formatter1 = DateFormat('MMMM dd, yyyy  h:m a');
  String get dateWithTime =>
      dateTime != null ? _formatter1.format(dateTime!) : '';

  bool get hasTodo => todo.isNotEmpty;
}

@freezed
class Todo with _$Todo {
  Todo._();

  factory Todo({
    @Default(false) bool completed,
    String? title,
    String? id,
  }) = _Todo;

  factory Todo.empty() {
    const _uuid = Uuid();

    return Todo(
      id: _uuid.v4(),
      title: '',
      completed: false,
    );
  }
}
