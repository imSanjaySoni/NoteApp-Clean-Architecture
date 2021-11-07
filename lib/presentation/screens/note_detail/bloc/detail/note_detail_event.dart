part of 'note_detail_bloc.dart';

@freezed
class NoteDetailEvent with _$NoteDetailEvent {
  const factory NoteDetailEvent.showNote(String noteId) = _ShowNote;
  const factory NoteDetailEvent.toggleTodoCheckbox(String todoId) =
      _ToggleTodoCheckbox;
}
