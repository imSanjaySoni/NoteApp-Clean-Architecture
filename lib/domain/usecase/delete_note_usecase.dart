import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:note_app/domain/model/error.dart';
import 'package:note_app/domain/repository/note_repository.dart';

@injectable
class DeleteNoteUsecase {
  const DeleteNoteUsecase(this._repository);
  final NoteRepository _repository;

  Future<Either<NoteError, Unit>> call(String id) async {
    try {
      await _repository.deleteNote(id);
      return right(unit);
    } catch (_) {
      return left(
        NoteError(message: 'Failed to delete note, please try again.'),
      );
    }
  }
}
