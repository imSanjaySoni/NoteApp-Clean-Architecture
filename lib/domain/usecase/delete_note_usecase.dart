import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:note_app/domain/model/error.dart';
import 'package:note_app/domain/repository/note_repository.dart';

@injectable
class DeleteNoteUsecase {
  DeleteNoteUsecase(this._repository);
  final NoteRepository _repository;

  Future<Either<NoteError, Unit>> call(int id) async {
    try {
      await _repository.deleteNote(id);
      return right(unit);
    } catch (e) {
      return left(
        NoteError(message: 'Failed to delete note, please try again.'),
      );
    }
  }
}
