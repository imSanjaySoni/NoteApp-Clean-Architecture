import 'package:note_app/data/dto/note_dto.dart';

abstract class NoteRepository {
  Future<List<NoteDto>> getAllNotes();
  Future<NoteDto> getNote(int id);
  Future addUpdateNote(NoteDto note);
  Future deleteNote(int id);
}
