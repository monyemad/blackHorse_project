import 'package:course_project/Models/lecture_4/person.dart';
import 'package:flutter/material.dart';

class CarScreen extends StatelessWidget {
  const CarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Person myInfo = Person(23, 'Omnia');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Personal Information",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
          child: Text(
        myInfo.personInfo(),
        style: const TextStyle(
          fontSize: 24,
        ),
      )),
    );
  }
}
