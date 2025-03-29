import 'package:course_project/Models/lecture_10_11/notes.dart';
import 'package:course_project/Services/hive_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:course_project/Cubits/notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(InitialState());

  static List<NoteItem> notes = [];

  void getNotes() {
    emit(NotesLoadingState());
    try {
      notes = HiveHelper.getNote();
      emit(NotesSuccessState(notes));
    } catch (error) {
      emit(NotesFailureState(error.toString()));
    }
  }

  Future<void> addNotes(NoteItem note) async {
    emit(NotesLoadingState());
    try {
      await HiveHelper.addNote(note);
      getNotes();
    } catch (error) {
      emit(NotesFailureState(error.toString()));
    }
  }

  Future<void> deleteAtNotes(int index) async {
    emit(NotesLoadingState());
    try {
      await HiveHelper.deleteNote(index);
      getNotes();
    } catch (error) {
      emit(NotesFailureState(error.toString()));
    }
  }

  Future<void> updateNotes(int index, NoteItem updatedNote) async {
    emit(NotesLoadingState());
    try {
      await HiveHelper.updateNote(updatedNote, index);
      getNotes();
    } catch (error) {
      emit(NotesFailureState(error.toString()));
    }
  }
}
