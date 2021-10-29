import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:note_app/domain/model/error.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';

@injectable
class ShowAllNotesUsecase {
  const ShowAllNotesUsecase(this._repository);
  final NoteRepository _repository;

  Future<Either<NoteError, List<Note>>> call() async {
    try {
      final notesDto = await _repository.getAllNotes();
      final notes = notesDto.map((note) => note.toDomain()).toList();

      return right(notes);
    } catch (_) {
      return left(NoteError());
    }
  }
}
