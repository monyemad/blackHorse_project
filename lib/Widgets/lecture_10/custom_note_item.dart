// ignore_for_file: must_be_immutable

import 'package:course_project/Models/time.dart';
import 'package:course_project/Screens/lecture_10/edit_note_page.dart';
import 'package:flutter/material.dart';

class CustomNote extends StatefulWidget {
  const CustomNote(
      {super.key,
      // required this.note,
      required this.title,
      required this.subTitle});

  // final NoteItem note;
  final String title;
  final String subTitle;

  @override
  State<CustomNote> createState() => _CustomNoteState();
}

class _CustomNoteState extends State<CustomNote> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    TimeOfDay now = TimeOfDay.now();
    String formattedTime = Time.formatTimeOfDay(now);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.only(bottom: 24,top: 6),
        height: 120,
        width: screenWidth,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.amber),
        child: Column(
          children: [
            ListTile(
              title: Text(
                widget.title,
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontFamily: "Dancing Script",
                    fontWeight: FontWeight.w600),
              ),
              trailing: Column(
                children: [
                  Expanded(child: Icon(Icons.delete_rounded,color: Colors.red.shade900,)),
                  Text(
                    formattedTime,
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                ],
              ),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EditNoteScreen(
                              text: widget.title,
                              description: widget.subTitle,
                            )),
                    (Route<dynamic> route) => false);
              },
              subtitle: Text(widget.subTitle,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      overflow: TextOverflow.ellipsis,
                      fontFamily: "Dancing Script")),
            ),
          ],
        ),
      ),
    );
  }
}
