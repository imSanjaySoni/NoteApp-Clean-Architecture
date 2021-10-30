import 'dart:ui' show Color;

import 'package:hive_flutter/hive_flutter.dart';

import 'package:note_app/domain/model/note.dart';

part 'note_dto.g.dart';

@HiveType(typeId: 1)
class NoteDto {
  NoteDto({
    this.id,
    this.title,
    this.description,
    this.colorValue,
    this.dateTime,
  });

  factory NoteDto.toDto(Note note) {
    return NoteDto(
      id: note.id,
      title: note.title,
      description: note.description,
      dateTime: note.dateTime?.toIso8601String(),
      colorValue: note.color?.value,
    );
  }
  Note toDomain() {
    return Note(
      id: id,
      title: title,
      description: description,
      dateTime: DateTime.tryParse(dateTime!),
      color: Color(colorValue!),
    );
  }

  NoteDto copyWith({
    String? id,
    String? title,
    String? description,
    int? colorValue,
    String? dateTime,
  }) {
    return NoteDto(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      colorValue: colorValue ?? this.colorValue,
      dateTime: dateTime ?? this.dateTime,
    );
  }

  bool get validNote => title?.isNotEmpty == true;

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
}
