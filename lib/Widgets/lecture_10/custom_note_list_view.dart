import 'package:course_project/Models/notes.dart';
import 'package:course_project/Widgets/lecture_10/custom_note_item.dart';
import 'package:flutter/material.dart';

class CustomNoteList extends StatelessWidget {
  CustomNoteList({
    super.key,
  });

  List<NoteItem> note=[

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: note.length,
      itemBuilder: (context, index) {
        return CustomNote(note: note[index],

        );
      },
    );
  }
}
