import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/usecase/usecase.dart';
import 'package:note_app/presentation/components/toast.dart';

part 'note_detail_event.dart';
part 'note_detail_state.dart';
part 'note_detail_bloc.freezed.dart';

@injectable
class NoteDetailBloc extends Bloc<NoteDetailEvent, NoteDetailState> {
  NoteDetailBloc(this._usecase, this._updateUsecase)
      : super(const NoteDetailState.initial()) {
    //* show note detail
    on<_ShowNote>((event, emit) async {
      emit(const NoteDetailState.loading());

      final failureOrSuccess = await _usecase(event.noteId);

      failureOrSuccess.fold(
        (error) => emit(NoteDetailState.error(message: error.message)),
        (note) => emit(NoteDetailState.success(note)),
      );
    });

    //* toggle Todo Checkbox
    on<_ToggleTodoCheckbox>((event, emit) async {
      if (state is _Loaded) {
        final state = this.state as _Loaded;

        final updatedNote = state.note.copyWith(
          todo: state.note.todo.map((todo) {
            if (todo.id == event.todoId) {
              return todo.copyWith(completed: !todo.completed);
            }
            return todo;
          }).toList(),
        );

/* sort by value 
        updatedNote.todo.sort((a, b) {
          if (b.completed) {
            return -1;
          }
          return 1;
        });
*/
        final failureOrSuccess = await _updateUsecase(updatedNote);
        failureOrSuccess.fold(
          (error) {
            getIt<AppRouter>()
                .context
                .showToast('👎  ${error.message}', isError: true);
          },
          (_) => emit(state.copyWith(note: updatedNote)),
        );
      }
    });
  }

  final GetNoteUsecase _usecase;
  final UpdateNoteUsecase _updateUsecase;
}
