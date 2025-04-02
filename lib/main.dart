import 'package:course_project/Cubits/notes_cubit.dart';
import 'package:course_project/Models/lecture_10_11/notes.dart';
import 'package:course_project/Screens/lecture_10_11/note_page.dart';
import 'package:course_project/Services/hive_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteItemAdapter());
  await HiveHelper.noteInit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit()..getNotes(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
        home: const NoteScreen(),
      ),
    );
  }
}
