part of 'note_action_bloc.dart';

@freezed
class NoteActionEvent with _$NoteActionEvent {
  const factory NoteActionEvent.deleteNote(String noteId) = _DeleteNote;
}
