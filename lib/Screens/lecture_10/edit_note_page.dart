import 'package:course_project/Screens/lecture_10/note_page.dart';
import 'package:course_project/Widgets/lecture_10/custom_app_bar_note.dart';
import 'package:course_project/Widgets/lecture_10/custom_form_field.dart';
import 'package:flutter/material.dart';

class EditNoteScreen extends StatelessWidget {
  final String hint;
  EditNoteScreen({super.key, required this.hint,});

  final TextEditingController title=TextEditingController();
  final TextEditingController subTitle=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarNote(text: "Edit note", icon: Icons.done_rounded, onTap: (){Navigator.pushAndRemoveUntil(
          context, MaterialPageRoute(builder: (context)=>NoteScreen()), (Route<dynamic> route) => false);}),
      body: Column(
        children: [
          CustomFormField(
              controller: title, label: 'title', hint: hint.toString()),
          SizedBox(
            height: 15,
          ),
          CustomFormField(
            controller: subTitle,
            label: 'Description',
            hint: hint,
            maxLines: 7,
          ),
        ],
      ),
    );
  }
}