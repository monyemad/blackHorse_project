import 'package:course_project/Screens/lecture_5/numbers_page.dart';
import 'package:course_project/Screens/lecture_7_8/business_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NumbersScreen(),
    );
  }
}
