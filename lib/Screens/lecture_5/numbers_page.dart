// ignore_for_file: must_be_immutable

import 'package:course_project/Models/classes_lecture_5/numbers_class.dart';
import 'package:course_project/Widgets/lecture_5/custom_item.dart';
import 'package:flutter/material.dart';

class NumbersScreen extends StatelessWidget {
  NumbersScreen({super.key});

  List<Numbers> numbers = [
    Numbers(
      "assets/numbers/number_one.png",
      "one",
      "Hana",
    ),
    Numbers(
        "assets/numbers/number_two.png",
        "two",
        "Dul"),
    Numbers(
        "assets/numbers/number_three.png",
        "three",
        "Sam"),
    Numbers(
        "assets/numbers/number_four.png",
        "four",
        "Ne"),
    Numbers(
      "assets/numbers/number_five.png",
      "five",
      "Daseos",
    ),
    Numbers(
        "assets/numbers/number_six.png",
        "six",
        "Yug"),
    Numbers(
        "assets/numbers/number_seven.png",
        "seven",
        "Ilgob"),
    Numbers(
        "assets/numbers/number_eight.png",
        "eight",
        "Yeodeolb"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Numbers", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Items(number: numbers[0]),
            Container(
              color: Colors.amber,
              child: const Divider(
                thickness: 2,
                indent: 8,
                endIndent: 8,
              ),
            ),
            Items(number: numbers[1]),
            Container(
              color: Colors.amber,
              child: const Divider(
                thickness: 2,
                indent: 8,
                endIndent: 8,
              ),
            ),
            Items(number: numbers[2]),
            Container(
              color: Colors.amber,
              child: const Divider(
                thickness: 2,
                indent: 8,
                endIndent: 8,
              ),
            ),
            Items(number: numbers[3]),
            Container(
              color: Colors.amber,
              child: const Divider(
                thickness: 2,
                indent: 8,
                endIndent: 8,
              ),
            ),
            Items(number: numbers[4]),
            Container(
              color: Colors.amber,
              child: const Divider(
                thickness: 2,
                indent: 8,
                endIndent: 8,
              ),
            ),
            Items(number: numbers[5]),
            Container(
              color: Colors.amber,
              child: const Divider(
                thickness: 2,
                indent: 8,
                endIndent: 8,
              ),
            ),
            Items(number: numbers[6]),
            Container(
              color: Colors.amber,
              child: const Divider(
                thickness: 2,
                indent: 8,
                endIndent: 8,
              ),
            ),
            Items(number: numbers[7]),
          ],
        ),
      ),
    );
  }
}
