import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:note_app/domain/model/error.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';

@injectable
class GetNoteUsecase {
  const GetNoteUsecase(this._repository);
  final NoteRepository _repository;

  Future<Either<NoteError, Note>> call(int id) async {
    try {
      final noteDto = await _repository.getNote(id);
      final note = noteDto.toDomain();

      return right(note);
    } catch (_) {
      return left(NoteError());
    }
  }
}
