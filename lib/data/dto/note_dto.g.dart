// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TodoDtoAdapter extends TypeAdapter<TodoDto> {
  @override
  final int typeId = 0;

  @override
  TodoDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TodoDto(
      id: fields[0] as String?,
      title: fields[1] as String?,
      completed: fields[2] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, TodoDto obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.completed);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TodoDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class NoteDtoAdapter extends TypeAdapter<NoteDto> {
  @override
  final int typeId = 1;

  @override
  NoteDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NoteDto(
      id: fields[0] as String?,
      title: fields[1] as String?,
      description: fields[2] as String?,
      colorValue: fields[3] as int?,
      dateTime: fields[4] as String?,
      todoList: (fields[5] as List?)?.cast<TodoDto>(),
    );
  }

  @override
  void write(BinaryWriter writer, NoteDto obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.colorValue)
      ..writeByte(4)
      ..write(obj.dateTime)
      ..writeByte(5)
      ..write(obj.todoList);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NoteDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
