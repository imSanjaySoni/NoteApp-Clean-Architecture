part of 'note_detail_bloc.dart';

@freezed
class NoteDetailState with _$NoteDetailState {
  const factory NoteDetailState.initial() = _Initial;
  const factory NoteDetailState.loading() = _Loading;
  const factory NoteDetailState.success(Note note) = _Loaded;
  const factory NoteDetailState.error({String? message}) = _Error;
}
