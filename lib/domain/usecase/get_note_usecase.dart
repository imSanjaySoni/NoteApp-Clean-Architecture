import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:note_app/common/exception.dart';

import 'package:note_app/domain/model/error.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';

@injectable
class GetNoteUsecase {
  const GetNoteUsecase(this._repository);
  final NoteRepository _repository;

  Future<Either<NoteError, Note>> call(String id) async {
    try {
      final noteDto = await _repository.getNote(id);
      final note = noteDto.toDomain();

      return right(note);
    } catch (e) {
      if (e is NoRecordsException) {
        return left(NoteError(message: 'No matched note found.'));
      }
      return left(
        NoteError(message: 'Failed to load note, please try again.'),
      );
    }
  }
}
