import 'package:course_project/Cubits/notes_cubit.dart';
import 'package:course_project/Cubits/notes_state.dart';
import 'package:course_project/Widgets/lecture_10_11/custom_note_item.dart';
import 'package:course_project/Widgets/lecture_7_8_9/custom_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomNoteList extends StatelessWidget {
  const CustomNoteList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        if (state is NotesLoadingState) {
          return CustomCircularIndicator(
            backgroundColor: Colors.white,
            color: Colors.indigoAccent,
          );
        } else if (state is NotesSuccessState) {
          return ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: state.noteList.length,
            itemBuilder: (context, index) {
              return CustomNote(
                notes: state.noteList[index],
                index: index,
              );
            },
          );
        } else {
          return Center(
            child: Text(
              "NO Note",
              style: TextStyle(fontSize: 25),
            ),
          );
        }
      },
    );
  }
}
