import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:note_app/common/extension/string.dart';

import 'package:note_app/data/dto/note_dto.dart';
import 'package:note_app/domain/model/error.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';
import 'package:uuid/uuid.dart';

@injectable
class AddNoteUsecase {
  AddNoteUsecase(this._repository);
  final NoteRepository _repository;
  final _uuid = const Uuid();

  Future<Either<NoteError, Unit>> call(Note note) async {
    try {
      note.todo.removeWhere((todo) => todo.title.isEmptyString);
      final noteDto = NoteDto.fromNote(note);

      if (!noteDto.validNote) {
        return left(
          NoteError(message: 'Failed to add note, Title should not empty.'),
        );
      }

      await _repository.addUpdateNote(noteDto.copyWith(id: _uuid.v4()));
      return right(unit);
    } catch (_) {
      return left(NoteError(message: 'Failed to add note, please try again.'));
    }
  }
}
