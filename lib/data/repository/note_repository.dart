import 'package:injectable/injectable.dart';
import 'package:note_app/data/dto/note_dto.dart';
import 'package:note_app/domain/database/database.dart';
import 'package:note_app/domain/repository/note_repository.dart';

@LazySingleton(as: NoteRepository)
class NoteRepositoryImplementation implements NoteRepository {
  NoteRepositoryImplementation(this._database);

  final Database _database;

  @override
  Future addUpdateNote(int? id, NoteDto note) async {
    try {
      if (id == null) {
        await _database.add(note);
      } else {
        await _database.update(id, note);
      }
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future deleteNote(int id) async {
    try {
      await _database.delete(id);
    } catch (_) {
      rethrow;
    }
  }

  @override
  List<NoteDto> getAllNotes() {
    try {
      final notesDto =
          _database.getAll().map((note) => note as NoteDto).toList();
      return notesDto;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<NoteDto> getNote(int id) async {
    try {
      final noteDto = await _database.get(id) as NoteDto;
      return noteDto;
    } catch (_) {
      rethrow;
    }
  }
}
