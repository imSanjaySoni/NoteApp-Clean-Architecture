part of 'note_action_bloc.dart';

@freezed
class NoteActionState with _$NoteActionState {
  const factory NoteActionState.initial() = _Initial;
  const factory NoteActionState.deleteSuccess() = _DeleteSuccess;
  const factory NoteActionState.deleteFailure({String? message}) =
      _DeleteFailure;
}
