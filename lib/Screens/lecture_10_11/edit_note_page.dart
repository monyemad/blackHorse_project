import 'package:course_project/Models/lecture_10_11/notes.dart';
import 'package:course_project/Screens/lecture_10_11/note_page.dart';
import 'package:course_project/Widgets/lecture_10_11/custom_app_bar_note.dart';
import 'package:course_project/Widgets/lecture_10_11/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:course_project/Cubits/notes_cubit.dart';

class EditNoteScreen extends StatefulWidget {
  final NoteItem note;
  final int index;

  const EditNoteScreen({super.key, required this.note, required this.index});

  @override
  State<EditNoteScreen> createState() => _EditNoteScreenState();
}

class _EditNoteScreenState extends State<EditNoteScreen> {
  late String? updatedTitle;
  late String? updatedSubTitle;

  @override
  void initState() {
    super.initState();
    updatedTitle = widget.note.title.toString();
    updatedSubTitle = widget.note.subTitle.toString();
  }

  void _updateNote() {
    final updatedNote = NoteItem(
      title: updatedTitle,
      subTitle: updatedSubTitle,
    );

    context.read<NotesCubit>().updateNotes(widget.index, updatedNote);

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const NoteScreen()),
          (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarNote(
        text: "Edit Note",
        icon: Icons.done_rounded,
        onTap: _updateNote,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CustomFormField(
              controller: TextEditingController(text: updatedTitle),
              onChange: (value) {
                updatedTitle = value;
                return null;
              },
            ),
            const SizedBox(height: 15),
            CustomFormField(
              controller: TextEditingController(text: updatedSubTitle),
              onChange: (value) {
                updatedSubTitle = value;
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
