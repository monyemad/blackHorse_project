// ignore_for_file: must_be_immutable

import 'package:course_project/Models/numbers_class.dart';
import 'package:course_project/Widgets/custom_item.dart';
import 'package:flutter/material.dart';

class NumbersScreen extends StatelessWidget {
  NumbersScreen({super.key});

  List<Numbers> numbers = [
    Numbers(
      "https://cdn-icons-png.freepik.com/256/12020/12020568.png?uid=R178573337&ga=GA1.1.1715082119.1740527231&semt=ais_hybrid",
      "one",
      "Hana",
    ),
    Numbers(
        "https://cdn-icons-png.freepik.com/256/5124/5124021.png?uid=R178573337&ga=GA1.1.1715082119.1740527231&semt=ais_hybrid",
        "two",
        "Dul"),
    Numbers(
        "https://cdn-icons-png.freepik.com/256/3918/3918537.png?uid=R178573337&ga=GA1.1.1715082119.1740527231&semt=ais_hybrid",
        "three",
        "Sam"),
    Numbers(
        "https://img.freepik.com/premium-vector/apple-apple-fruit-apple-cartoon_520417-717.jpg?uid=R178573337&ga=GA1.1.1715082119.1740527231&semt=ais_hybrid",
        "four",
        "Ne"),
    Numbers(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSr5nFLIbtD1QEaQJLA9r25QbyIcr0Vbp5f9A&s",
      "five",
      "Daseos",
    ),
    Numbers(
        "https://img.freepik.com/free-vector/red-apples-pile-white-background_1308-128784.jpg?uid=R178573337&ga=GA1.1.1715082119.1740527231&semt=ais_hybrid",
        "six",
        "Yug"),
    Numbers(
        "https://img.freepik.com/premium-vector/red-apples-pattern-with-handdrawn-icon_851401-10.jpg?uid=R178573337&ga=GA1.1.1715082119.1740527231&semt=ais_hybrid",
        "seven",
        "Ilgob"),
    Numbers(
        "https://img.freepik.com/premium-vector/apple-vector-illustration-apple-silhouette-vector-bundle_891172-8715.jpg",
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
