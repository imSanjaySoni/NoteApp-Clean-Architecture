import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_detail_event.dart';
part 'note_detail_state.dart';
part 'note_detail_bloc.freezed.dart';

class NoteDetailBloc extends Bloc<NoteDetailEvent, NoteDetailState> {
  NoteDetailBloc() : super(_Initial()) {
    on<NoteDetailEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
