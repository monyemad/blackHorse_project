// import 'package:course_project/Screens/lecture_10_11/add_note_page.dart';
import 'package:course_project/Widgets/lecture_10_11/custom_app_bar_note.dart';
import 'package:course_project/Widgets/lecture_10_11/custom_form_note.dart';
import 'package:course_project/Widgets/lecture_10_11/custom_note_list_view.dart';
import 'package:flutter/material.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {
          // Navigator.push(context, MaterialPageRoute(builder: (context){return AddNoteScreen();}));
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: CustomForm(formKey: formKey,),
                );
              });
        },
        backgroundColor: Colors.teal,
        child: Icon(Icons.add_rounded),
      ),
      appBar: AppBarNote(
        text: "Notes",
        icon: Icons.search_rounded,
      ),
      body: Column(
        children: [
          Expanded(child: CustomNoteList()),
        ],
      ),
    );
  }
}
