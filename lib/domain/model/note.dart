import 'dart:ui' show Color;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

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
  }) = _Note;

  final DateFormat _formatter = DateFormat('MMMM dd, yyyy');
  String get date => dateTime != null ? _formatter.format(dateTime!) : '';
}
