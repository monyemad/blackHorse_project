import 'package:course_project/Cubits/notes_cubit.dart';
import 'package:course_project/Models/lecture_10_11/date_and_time.dart';
import 'package:course_project/Models/lecture_10_11/notes.dart';
import 'package:course_project/Screens/lecture_10_11/edit_note_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomNote extends StatelessWidget {
  const CustomNote({
    super.key,
    required this.notes,
    required this.index,
  });

  final NoteItem notes;
  final int index;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    TimeOfDay now = TimeOfDay.now();
    String formattedTime = Time.formatTimeOfDay(now);

    DateTime today = DateTime.now();
    String formattedDate = Date.formatDate(today); // Output: March 23, 2025

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.only(bottom: 24, top: 6),
        height: 140,
        width: screenWidth,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.amber),
        child: Column(
          children: [
            ListTile(
              title: Text(
                notes.title.toString(),
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontFamily: "Dancing Script",
                    fontWeight: FontWeight.w600),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.delete_rounded,
                  color: Colors.red.shade900,
                ),
                onPressed: () {
                  context.read<NotesCubit>().deleteAtNotes(index);
                },
              ),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EditNoteScreen(
                              note: notes,
                              index: index,
                            )),
                    (Route<dynamic> route) => false);
              },
              subtitle: Text(notes.subTitle.toString(),
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      overflow: TextOverflow.ellipsis,
                      fontFamily: "Dancing Script")),
            ),
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    formattedDate.toString(),
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  Text(
                    formattedTime,
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
