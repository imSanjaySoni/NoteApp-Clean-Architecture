part of 'add_update_bloc.dart';

@freezed
class AddUpdateEvent with _$AddUpdateEvent {
  const factory AddUpdateEvent.addNote(Note note) = _AddNote;

  const factory AddUpdateEvent.updateNote(Note note, String noteId) =
      _UpdateNote;
}
