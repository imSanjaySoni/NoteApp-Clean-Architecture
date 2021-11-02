import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:note_app/common/extension/string.dart';

part 'add_update_form_event.dart';
part 'add_update_form_state.dart';
part 'add_update_form_bloc.freezed.dart';

@injectable
class AddUpdateFormBloc extends Bloc<AddUpdateFormEvent, AddUpdateFormState> {
  AddUpdateFormBloc() : super(AddUpdateFormState()) {
    on<_Initialize>((event, emit) {
      emit(
        AddUpdateFormState(
          title: event.title,
          description: event.description,
          selectedColor: event.color,
        ),
      );
    });

    on<AddUpdateFormEvent>((event, emit) {
      if (event is _TitleChanged) {
        emit(state.copyWith(title: event.value));
      }

      if (event is _DescriptionChanged) {
        emit(state.copyWith(description: event.value));
      }

      if (event is _ColorChanged) {
        emit(state.copyWith(selectedColor: event.value));
      }
    });
  }
}
