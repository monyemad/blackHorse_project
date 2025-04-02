import 'package:course_project/Models/lecture_10_11/notes.dart';

abstract class NotesState {}

final class InitialState extends NotesState {}

final class NotesLoadingState extends NotesState {}

final class NotesSuccessState extends NotesState {
  List<NoteItem> noteList;
  NotesSuccessState(this.noteList);
}

final class NotesFailureState extends NotesState {
  final String error;
  NotesFailureState(this.error);
}
