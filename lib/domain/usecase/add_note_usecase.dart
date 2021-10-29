import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:note_app/data/dto/note_dto.dart';
import 'package:note_app/domain/model/error.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';

@injectable
class AddNoteUsecase {
  AddNoteUsecase(this._repository);
  final NoteRepository _repository;

  Future<Either<NoteError, Unit>> call(Note note) async {
    try {
      final noteDto = NoteDto.toDto(note);
      await _repository.addUpdateNote(noteDto);
      return right(unit);
    } catch (e) {
      return left(NoteError(message: 'Failed to add note, please try again.'));
    }
  }
}
