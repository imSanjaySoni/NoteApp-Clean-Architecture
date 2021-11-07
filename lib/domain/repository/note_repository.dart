import 'package:note_app/data/dto/note_dto.dart';

abstract class NoteRepository {
  List<NoteDto> getAllNotes();
  Future<NoteDto> getNote(String id);
  Future addUpdateNote(NoteDto note);
  Future deleteNote(String id);
  Future deleteMultiNotes(List<String> ids);
}
