import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:note_app/di/di.dart';

import 'package:note_app/domain/usecase/usecase.dart';
import 'package:note_app/presentation/components/toast.dart';
import 'package:note_app/presentation/routes/routes.dart';

part 'note_action_bloc.freezed.dart';
part 'note_action_event.dart';
part 'note_action_state.dart';

@injectable
class NoteActionBloc extends Bloc<NoteActionEvent, NoteActionState> {
  NoteActionBloc(
    this._usecase,
  ) : super(const NoteActionState.initial()) {
    on<_DeleteNote>((event, emit) async {
      final failureOrSuccess = await _usecase(event.noteId);

      failureOrSuccess.fold(
        (failure) {
          emit(NoteActionState.deleteFailure(message: failure.message));
          getIt<AppRouter>()
              .context
              .showToast('👎  ${failure.message}', isError: true);
        },
        (success) {
          emit(const NoteActionState.deleteSuccess());
          getIt<AppRouter>().navigate(const HomeRoute());
          getIt<AppRouter>().context.showToast('👍  Note Deleted.');
        },
      );
    });
  }
  final DeleteNoteUsecase _usecase;
}
