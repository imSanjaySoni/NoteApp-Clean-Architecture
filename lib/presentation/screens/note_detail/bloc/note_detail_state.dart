part of 'note_detail_bloc.dart';

@freezed
class NoteDetailState with _$NoteDetailState {
  const factory NoteDetailState.initial() = _Initial;
  const factory NoteDetailState.deleteSuccess() = _DeleteSuccess;
  const factory NoteDetailState.deleteFailure({String? message}) =
      _DeleteFailure;
}
