import 'package:course_project/Widgets/lecture_10/custom_app_bar_note.dart';
import 'package:course_project/Widgets/lecture_10/custom_form_field.dart';
import 'package:course_project/Widgets/lecture_10/custom_note_button.dart';
import 'package:course_project/Widgets/lecture_10/custom_note_list_view.dart';
import 'package:flutter/material.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController title = TextEditingController();
    TextEditingController subTitle = TextEditingController();
    GlobalKey formKey = GlobalKey();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomFormField(
                            controller: title, label: 'title', hint: 'Title'),
                        SizedBox(
                          height: 15,
                        ),
                        CustomFormField(
                          controller: subTitle,
                          label: 'Description',
                          hint: 'Description',
                          maxLines: 7,
                        ),
                        SizedBox(height: 20,),
                        CustomNoteButton()
                      ],
                    ),
                  ),
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
