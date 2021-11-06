import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:note_app/common/extension/string.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/presentation/screens/add_update_note/bloc/add_update_bloc.dart';

part 'add_update_form_event.dart';
part 'add_update_form_state.dart';
part 'add_update_form_bloc.freezed.dart';

@injectable
class AddUpdateFormBloc extends Bloc<AddUpdateFormEvent, AddUpdateFormState> {
  AddUpdateFormBloc(this._addUpdateBloc) : super(AddUpdateFormState()) {
    //* initialize form with initial data
    on<_Initialize>((event, emit) {
      emit(
        AddUpdateFormState(
          title: event.title,
          description: event.description,
          selectedColor: event.color,
          todos: event.todos ?? [],
        ),
      );
    });

    //* Update field with current data
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

    //* add or update note to local database.
    on<_AddOrUpdateNote>((event, emit) {
      if (event.id == null) {
        final note = Note(
          color: state.selectedColor,
          title: state.title,
          description: state.description,
          dateTime: DateTime.now(),
        );
        _addUpdateBloc.add(AddUpdateEvent.addNote(note));
      } else {
        final note = Note(
          id: event.id,
          color: state.selectedColor,
          title: state.title,
          description: state.description,
          dateTime: DateTime.now(),
        );
        _addUpdateBloc.add(AddUpdateEvent.updateNote(note, event.id!));
      }
    });

    //* TODO's events
    //* add empty todo
    on<_AddEmptyTodo>((event, emit) {
      final todos = List<Todo>.from(state.todos);
      todos.add(Todo.empty());

      emit(state.copyWith(todos: todos));
    });

    //* Delete todo item
    on<_DeleteTodo>((event, emit) {
      final todos = List<Todo>.from(state.todos);
      todos.removeWhere((todo) => todo.id == event.id);

      emit(state.copyWith(todos: todos));
    });

    //* Update todo item
    on<_TodoValueChanged>((event, emit) {
      final todos = List<Todo>.from(state.todos);

      final updatedTodoList = todos.map((todo) {
        if (todo.id == event.id) {
          return todo.copyWith(
            title: event.value,
          );
        }
        return todo;
      }).toList();

      emit(state.copyWith(todos: updatedTodoList));
    });
  }

  final AddUpdateBloc _addUpdateBloc;
}
