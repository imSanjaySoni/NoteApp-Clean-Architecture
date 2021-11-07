import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:note_app/common/exception.dart';

import 'package:note_app/domain/model/error.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';

@injectable
class ShowAllNotesUsecase {
  const ShowAllNotesUsecase(this._repository);
  final NoteRepository _repository;

  Future<Either<NoteError, List<Note>>> call() async {
    try {
      final notesDto = _repository.getAllNotes();
      final notes = (notesDto..sort()).map((note) => note.toDomain()).toList();

      return right(notes);
    } catch (e) {
      if (e is NoRecordsException) {
        return left(
          NoteError(message: 'No notes found..\nclick + to add new one.'),
        );
      }
      return left(
        NoteError(message: 'Failed to load notes, please try again.'),
      );
    }
  }
}
