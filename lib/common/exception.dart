import 'package:freezed_annotation/freezed_annotation.dart';

part 'exception.freezed.dart';

@freezed
abstract class NoteAppException implements Exception, _$NoteAppException {
  factory NoteAppException.noRecords() = NoRecordsException;
  factory NoteAppException.empty(String message) = EmptyException;
  factory NoteAppException.failedToParse() = FailedToParseException;
}
