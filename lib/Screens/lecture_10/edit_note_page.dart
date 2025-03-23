// ignore_for_file: must_be_immutable

import 'package:course_project/Screens/lecture_10/note_page.dart';
import 'package:course_project/Widgets/lecture_10/custom_app_bar_note.dart';
import 'package:course_project/Widgets/lecture_10/custom_form_field.dart';
import 'package:flutter/material.dart';

class EditNoteScreen extends StatefulWidget {
  String? text;
  String? description;

  EditNoteScreen({
    super.key,
    this.text,
    this.description,
  });

  @override
  State<EditNoteScreen> createState() => _EditNoteScreenState();
}

class _EditNoteScreenState extends State<EditNoteScreen> {
  String? text;
  String? description;
  final TextEditingController title = TextEditingController();

  final TextEditingController subTitle = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarNote(
          text: "Edit note",
          icon: Icons.done_rounded,
          onTap: () {
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
              label: 'Title',
              onChange: (value) {
                text = value;
                return null;
              },
            ),
            SizedBox(
              height: 15,
            ),
            CustomFormField(
              controller: subTitle,
              label: 'Description',
              onChange: (value) {
                description = value;
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
