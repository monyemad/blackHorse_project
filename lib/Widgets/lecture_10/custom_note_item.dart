import 'package:course_project/Models/notes.dart';
import 'package:course_project/Models/time.dart';
import 'package:course_project/Screens/lecture_10/edit_note_page.dart';
import 'package:flutter/material.dart';

class CustomNote extends StatelessWidget {
  CustomNote({
    super.key,
    required this.note
  });

  String? text;

  final NoteItem note;

  @override
  Widget build(BuildContext context) {
    TimeOfDay now = TimeOfDay.now();
    String formattedTime = Time.formatTimeOfDay(now);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.only(left: 14, top: 24, bottom: 24),
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.amber),
        child: Column(
          children: [
            ListTile(
              title: Text(
                note.title,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.w400),
              ),
              trailing: IconButton(
                  color: Colors.red.shade900,
                  onPressed: () {},
                  icon: Icon(Icons.delete_rounded)),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => EditNoteScreen(hint: text.toString(),)),
                    (Route<dynamic> route) => false);
              },
              subtitle: Text(note.subTitle,
                  style: TextStyle(fontSize: 20, color: Colors.black87)),
            ),
          ],
        ),
      ),
    );
  }
}
