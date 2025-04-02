import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:course_project/Cubits/notes_cubit.dart';
import 'package:course_project/Cubits/notes_state.dart';
import 'package:course_project/Models/lecture_10_11/notes.dart';
import 'package:course_project/Widgets/lecture_10_11/custom_snack_bar.dart';
import 'package:course_project/Widgets/lecture_10_11/custom_text_form_field.dart';
import 'package:course_project/Widgets/lecture_10_11/custom_note_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomForm extends StatelessWidget {
  CustomForm({
    super.key,
    required this.formKey,
  });

  final TextEditingController title = TextEditingController();
  final TextEditingController subTitle = TextEditingController();
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NotesCubit, NotesState>(
      listener: (context, state) {
        if (state is NotesFailureState) {
          CustomSnackBar.show(
            context,
            message: state.error,
            text: 'Error',
            contentType: ContentType.failure,
          );
        } else if (state is NotesSuccessState) {
          CustomSnackBar.show(context,
              text: 'Success',
              message: "List Note Added Successfully",
              contentType: ContentType.success);
        }
      },
      builder: (context, state) {
        return Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFormField(
                controller: title,
                label: "Title",
                hint: 'Enter your title',
              ),
              SizedBox(
                height: 15,
              ),
              CustomFormField(
                controller: subTitle,
                label: "Description",
                hint: 'Enter your description',
                maxLines: 7,
              ),
              SizedBox(
                height: 20,
              ),
              CustomNoteButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    final note = NoteItem(
                        title: title.text,
                        subTitle: subTitle.text);
                    context.read<NotesCubit>().addNotes(note);
                    Navigator.pop(context);
                  }
                },
              )
            ],
          ),
        );
      },
    );
  }
}
