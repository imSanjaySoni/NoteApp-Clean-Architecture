import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:note_app/data/dto/note_dto.dart';
import 'package:note_app/domain/model/error.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';

@injectable
class UpdateNoteUsecase {
  UpdateNoteUsecase(this._repository);
  final NoteRepository _repository;

  Future<Either<NoteError, Unit>> call(Note note, int noteId) async {
    try {
      final noteDto = NoteDto.toDto(note);
      await _repository.addUpdateNote(noteDto, id: noteId);
      return right(unit);
    } catch (e) {
      return left(
        NoteError(message: 'Failed to Update note, please try again.'),
      );
    }
  }
}
