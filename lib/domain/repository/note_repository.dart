import 'package:note_app/data/dto/note_dto.dart';

abstract class NoteRepository {
  List<NoteDto> getAllNotes();
  Future<NoteDto> getNote(int id);
  Future addUpdateNote(NoteDto note, {int? id});
  Future deleteNote(int id);
}
