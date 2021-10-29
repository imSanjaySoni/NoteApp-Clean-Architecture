import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/usecase/usecase.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  /// Get all notes
  HomeBloc(this._usecase) : super(const HomeState.initial()) {
    on<_GetAllNotes>(
      (event, emit) async {
        emit(const HomeState.loading());

        final failureOrSuccess = await _usecase();

        failureOrSuccess.fold((error) {
          emit(HomeState.error(error.message));
        }, (notes) {
          emit(HomeState.loaded(notes));
        });
      },
    );
  }

  final ShowAllNotesUsecase _usecase;
}
