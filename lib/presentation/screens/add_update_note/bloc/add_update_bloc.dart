import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:note_app/domain/model/note.dart';

import 'package:note_app/domain/usecase/usecase.dart';
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

      failureOrSuccess.fold((error) {
        emit(AddUpdateState.failed(message: error.message));
      }, (notes) {
        emit(const AddUpdateState.saved());
      });
    });

    on<_UpdateNote>((event, emit) async {
      emit(const AddUpdateState.saving());

      final failureOrSuccess = await _updateUsecase(event.note, event.note.id!);

      failureOrSuccess.fold((error) {
        emit(AddUpdateState.failed(message: error.message));
      }, (notes) {
        emit(const AddUpdateState.saved());
      });
    });
  }

  final AddNoteUsecase _addUsecase;
  final UpdateNoteUsecase _updateUsecase;
}
