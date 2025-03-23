import 'package:course_project/Screens/lecture_10/edit_note_page.dart';
import 'package:flutter/material.dart';

class CustomNoteButton extends StatelessWidget {
  CustomNoteButton({super.key});
  String? text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        minWidth: 140,
        height: 40,
        onPressed: (){Navigator.pushAndRemoveUntil(
            context, MaterialPageRoute(builder: (context)=>EditNoteScreen(hint: text.toString(),)), (Route<dynamic> route) => false);},
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: Colors.teal,
        child: const Text(
          "Add",
          style: TextStyle(fontSize: 15),
        ));
  }
}
