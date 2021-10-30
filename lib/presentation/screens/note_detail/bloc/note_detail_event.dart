part of 'note_detail_bloc.dart';

@freezed
class NoteDetailEvent with _$NoteDetailEvent {
  const factory NoteDetailEvent.deleteNote(String noteId) = _DeleteNote;
}
