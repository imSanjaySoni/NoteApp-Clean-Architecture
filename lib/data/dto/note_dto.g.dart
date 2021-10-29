// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

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
    );
  }

  @override
  void write(BinaryWriter writer, NoteDto obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.colorValue)
      ..writeByte(4)
      ..write(obj.dateTime);
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
