import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_update_event.dart';
part 'add_update_state.dart';
part 'add_update_bloc.freezed.dart';

class AddUpdateBloc extends Bloc<AddUpdateEvent, AddUpdateState> {
  AddUpdateBloc() : super(const AddUpdateState.initial()) {
    on<AddUpdateEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
