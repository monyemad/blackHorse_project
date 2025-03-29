import 'package:course_project/Models/lecture_10_11/notes.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveHelper {
  static const String notesBox = "myNoteBox";
  static late Box<NoteItem> myNoteBox;

  static Future<void> noteInit() async {
    myNoteBox = await Hive.openBox<NoteItem>(notesBox);
  }

  static Future<void> addNote(NoteItem notes) async {
    await myNoteBox.add(notes);
  }

  static Future<void> deleteNote(int index) async {
    await myNoteBox.deleteAt(index);
  }

  static Future<void> updateNote(NoteItem updatedNote, int index) async {
    await myNoteBox.putAt(index, updatedNote);
  }

  static List<NoteItem> getNote() {
    return myNoteBox.values.toList();
  }
}
