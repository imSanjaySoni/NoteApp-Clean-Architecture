part of 'note_detail_bloc.dart';

@freezed
class NoteDetailEvent with _$NoteDetailEvent {
  const factory NoteDetailEvent.started() = _Started;
}
