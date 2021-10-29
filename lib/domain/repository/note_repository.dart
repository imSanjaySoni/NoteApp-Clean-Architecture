import 'package:note_app/data/dto/note_dto.dart';

abstract class NoteRepository {
  List<NoteDto> getAllNotes();
  Future<NoteDto> getNote(int id);
  Future addUpdateNote(int? id, NoteDto note);
  Future deleteNote(int id);
}
