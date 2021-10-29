import 'package:note_app/data/dto/note_dto.dart';
import 'package:note_app/domain/repository/note_repository.dart';

class NoteRepositoryImplementation implements NoteRepository {
  @override
  Future addUpdateNote(NoteDto note) {
    // TODO: implement addUpdateNote
    throw UnimplementedError();
  }

  @override
  Future deleteNote(int id) {
    // TODO: implement deleteNote
    throw UnimplementedError();
  }

  @override
  Future<List<NoteDto>> getAllNotes() {
    // TODO: implement getAllNotes
    throw UnimplementedError();
  }

  @override
  Future<NoteDto> getNote(int id) {
    // TODO: implement getNote
    throw UnimplementedError();
  }
}
