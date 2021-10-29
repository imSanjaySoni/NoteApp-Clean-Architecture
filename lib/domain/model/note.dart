import 'dart:ui' show Color;

import 'package:intl/intl.dart';

class Note {
  Note({
    this.id,
    this.title,
    this.description,
    this.color,
    this.dateTime,
  });

  final int? id;
  final String? title;
  final String? description;
  final Color? color;
  final DateTime? dateTime;

  final DateFormat _formatter = DateFormat('MMMM dd, yyyy');
  String get date => dateTime != null ? _formatter.format(dateTime!) : '';
}
