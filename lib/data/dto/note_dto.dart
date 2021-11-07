import 'dart:ui' show Color;

import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/common/constants.dart';
import 'package:note_app/common/extension/string.dart';
import 'package:note_app/domain/model/note.dart';

part 'note_dto.g.dart';

@HiveType(typeId: 0)
class TodoDto {
  TodoDto({
    this.id,
    this.title,
    this.completed,
  });

  factory TodoDto.fromDomain(Todo todo) {
    return TodoDto(
      completed: todo.completed,
      id: todo.id,
      title: todo.title.clipToMaxLength(todoMaxCharCount),
    );
  }

  @HiveField(0)
  final String? id;
  @HiveField(1)
  final String? title;
  @HiveField(2)
  final bool? completed;

  Todo toDomain() {
    return Todo(
      id: id,
      title: title,
      completed: completed ?? false,
    );
  }
}

@HiveType(typeId: 1)
class NoteDto implements Comparable {
  NoteDto({
    this.id,
    this.title,
    this.description,
    this.colorValue,
    this.dateTime,
    this.todoList = const [],
  });

  factory NoteDto.fromNote(Note note) {
    return NoteDto(
      id: note.id,
      title: note.title.clipToMaxLength(maxTitleCharCount),
      description: note.description,
      dateTime: note.dateTime?.toIso8601String(),
      colorValue: note.color?.value,
      todoList: note.todo.map((todo) => TodoDto.fromDomain(todo)).toList(),
    );
  }

  Note toDomain() {
    return Note(
      id: id,
      title: title,
      description: description,
      dateTime: DateTime.tryParse(dateTime!),
      color: Color(colorValue!),
      todo: todoList?.map((todo) => todo.toDomain()).toList() ?? [],
    );
  }

  bool get validNote => title?.isNotEmpty == true;

  NoteDto copyWith({
    String? id,
    String? title,
    String? description,
    int? colorValue,
    String? dateTime,
    List<TodoDto>? todoList,
  }) {
    return NoteDto(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      colorValue: colorValue ?? this.colorValue,
      dateTime: dateTime ?? this.dateTime,
      todoList: todoList ?? this.todoList,
    );
  }

  @HiveField(0)
  final String? id;
  @HiveField(1)
  final String? title;
  @HiveField(2)
  final String? description;
  @HiveField(3)
  final int? colorValue;
  @HiveField(4)
  final String? dateTime;
  @HiveField(5)
  final List<TodoDto>? todoList;

  @override
  int compareTo(other) {
    try {
      final _isAfter = DateTime.parse(other.dateTime).isAfter(
        DateTime.parse(dateTime!),
      );
      return _isAfter ? 1 : -1;
    } catch (_) {
      return 1;
    }
  }
}
