import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/usecase/usecase.dart';

part 'note_detail_event.dart';
part 'note_detail_state.dart';
part 'note_detail_bloc.freezed.dart';

@injectable
class NoteDetailBloc extends Bloc<NoteDetailEvent, NoteDetailState> {
  NoteDetailBloc(this._usecase) : super(const NoteDetailState.initial()) {
    on<_ShowNote>((event, emit) async {
      emit(const NoteDetailState.loading());

      final failureOrSuccess = await _usecase(event.noteId);

      failureOrSuccess.fold(
        (error) => emit(NoteDetailState.error(message: error.message)),
        (note) => emit(NoteDetailState.success(note)),
      );
    });
  }

  final GetNoteUsecase _usecase;
}
