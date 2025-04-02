import 'package:course_project/Widgets/lecture_10_11/custom_form_note.dart';
import 'package:flutter/material.dart';

class AddNoteScreen extends StatelessWidget {
  const AddNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Note"),
        titleTextStyle: TextStyle(color: Colors.white,fontFamily: "Agbalumo",fontSize: 25),
      ),
      body: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
    child: CustomForm(formKey: formKey,),
    ));
  }
}
