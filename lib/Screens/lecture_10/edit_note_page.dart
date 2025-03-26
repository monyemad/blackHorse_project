import 'package:course_project/Models/lecture_10/notes.dart';
import 'package:course_project/Screens/lecture_10/note_page.dart';
import 'package:course_project/Widgets/lecture_10/custom_app_bar_note.dart';
import 'package:course_project/Widgets/lecture_10/custom_text_form_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class EditNoteScreen extends StatelessWidget {
  EditNoteScreen({
    super.key,
    required this.note,
    required this.index,
  });

  final NoteItem note;
  final int index;

  final TextEditingController title = TextEditingController();

  final TextEditingController subTitle = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarNote(
          text: "Edit note",
          icon: Icons.done_rounded,
          onTap: () {
            context.read<NotesCubit>().updateNotes(widget.index, updatedNote);
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => NoteScreen()),
                    (Route<dynamic> route) => false);
          }),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CustomFormField(
              controller: title,
              onChange: (value){
                note.title=value;
                return null;
              },
            ),
            SizedBox(
              height: 15,
            ),
            CustomFormField(
              controller: subTitle,
              onChange: (value){
                note.subTitle=value;
                return null;
              },
              maxLines: 7,
            ),
          ],
        ),
      ),
    );
  }
}
