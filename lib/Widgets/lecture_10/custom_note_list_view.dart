import 'package:course_project/Widgets/lecture_10/custom_note_item.dart';
import 'package:flutter/material.dart';

class CustomNoteList extends StatelessWidget {
  const CustomNoteList({
    super.key,
  });

  // List<NoteItem> note = [];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return CustomNote(
          title: 'Flutter notes', subTitle: 'In Flutter, the entire UI is built using widgets. Even simple elements like text, buttons, and padding are widgets.',
        );
      },
    );
  }
}
