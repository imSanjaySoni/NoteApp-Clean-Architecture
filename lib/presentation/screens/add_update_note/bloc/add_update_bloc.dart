import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:note_app/common/constants.dart';
import 'package:note_app/di/di.dart';

import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/usecase/usecase.dart';
import 'package:note_app/presentation/components/toast.dart';
import 'package:note_app/presentation/routes/routes.dart';

export 'package:flutter_bloc/flutter_bloc.dart';

part 'add_update_bloc.freezed.dart';
part 'add_update_event.dart';
part 'add_update_state.dart';

@injectable
class AddUpdateBloc extends Bloc<AddUpdateEvent, AddUpdateState> {
  AddUpdateBloc(
    this._addUsecase,
    this._updateUsecase,
  ) : super(const AddUpdateState.initial()) {
    on<_AddNote>((event, emit) async {
      emit(const AddUpdateState.saving());

      final failureOrSuccess = await _addUsecase(event.note);

      await Future.delayed(animationDuration);

      failureOrSuccess.fold((failure) {
        emit(AddUpdateState.failed(message: failure.message));
        getIt<AppRouter>()
            .context
            .showToast('👎  ${failure.message}', isError: true);
      }, (_) {
        emit(const AddUpdateState.saved());
        getIt<AppRouter>().navigate(const HomeRoute());
        getIt<AppRouter>().context.showToast('👍  Note Added Successfully.');
      });
    });

    on<_UpdateNote>((event, emit) async {
      emit(const AddUpdateState.saving());

      final failureOrSuccess = await _updateUsecase(event.note);

      await Future.delayed(animationDuration);

      failureOrSuccess.fold((failure) {
        emit(AddUpdateState.failed(message: failure.message));
        getIt<AppRouter>()
            .context
            .showToast('👎   ${failure.message}', isError: true);
      }, (_) {
        emit(const AddUpdateState.saved());
        getIt<AppRouter>().navigate(const HomeRoute());
        getIt<AppRouter>().context.showToast('👍   Note Updated Successfully.');
      });
    });
  }

  final AddNoteUsecase _addUsecase;
  final UpdateNoteUsecase _updateUsecase;
}
