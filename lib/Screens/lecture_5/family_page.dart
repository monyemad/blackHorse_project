// ignore_for_file: must_be_immutable

import 'package:course_project/Models/classes_lecture_5/family_class.dart';
import 'package:course_project/Widgets/lecture_5/custom_family.dart';
import 'package:flutter/material.dart';

class FamilyScreen extends StatelessWidget {
  FamilyScreen({super.key});

  List<Family> family = [
    Family(
        "https://cdn-icons-png.freepik.com/256/7434/7434459.png?uid=R178573337&ga=GA1.1.1715082119.1740527231&semt=ais_hybrid",
        "mother",
        "Eomeoni"),
    Family(
        "https://cdn-icons-png.freepik.com/256/2233/2233915.png?uid=R178573337&ga=GA1.1.1715082119.1740527231&semt=ais_hybrid",
        "father",
        "Abeoji"),
    Family(
        "https://cdn-icons-png.freepik.com/256/2423/2423779.png?uid=R178573337&ga=GA1.1.1715082119.1740527231&semt=ais_hybrid",
        "grandmother",
        "Halmeoni"),
    Family(
        "https://cdn-icons-png.freepik.com/256/3544/3544993.png?uid=R178573337&ga=GA1.1.1715082119.1740527231&semt=ais_hybrid",
        "grandfather",
        "Hal-abeoji"),
    Family(
        "https://cdn-icons-png.freepik.com/256/6725/6725084.png?uid=R178573337&ga=GA1.1.1715082119.1740527231",
        "older sister",
        "Eonni"),
    Family(
        "https://cdn-icons-png.freepik.com/256/4439/4439947.png?uid=R178573337&ga=GA1.1.1715082119.1740527231&semt=ais_hybrid",
        "older brother",
        "Hyeong"),
    Family(
        "https://cdn-icons-png.freepik.com/256/352/352504.png?uid=R178573337&ga=GA1.1.1715082119.1740527231&semt=ais_hybrid",
        "aunt",
        "Imo"),
    Family(
        "https://cdn-icons-png.freepik.com/256/818/818133.png?uid=R178573337&ga=GA1.1.1715082119.1740527231&semt=ais_hybrid",
        "uncle",
        "Samchon"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text("Family Members", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.cyan,
      ),
      body: ListView(
        children: [
          FamilyItems(member: family[0]),
          Container(
            color: Colors.purple.shade200,
            child: const Divider(
              thickness: 2,
              indent: 8,
              endIndent: 8,
              color: Colors.black,
            ),
          ),
          FamilyItems(member: family[1]),
          Container(
            color: Colors.purple.shade200,
            child: const Divider(
              thickness: 2,
              indent: 8,
              endIndent: 8,
              color: Colors.black,
            ),
          ),
          FamilyItems(member: family[2]),
          Container(
            color: Colors.purple.shade200,
            child: const Divider(
              thickness: 2,
              indent: 8,
              endIndent: 8,
              color: Colors.black,
            ),
          ),
          FamilyItems(member: family[3]),
          Container(
            color: Colors.purple.shade200,
            child: const Divider(
              thickness: 2,
              indent: 8,
              endIndent: 8,
              color: Colors.black,
            ),
          ),
          FamilyItems(member: family[4]),
          Container(
            color: Colors.purple.shade200,
            child: const Divider(
              thickness: 2,
              indent: 8,
              endIndent: 8,
              color: Colors.black,
            ),
          ),
          FamilyItems(member: family[5]),
          Container(
            color: Colors.purple.shade200,
            child: const Divider(
              thickness: 2,
              indent: 8,
              endIndent: 8,
              color: Colors.black,
            ),
          ),
          FamilyItems(member: family[6]),
          Container(
            color: Colors.purple.shade200,
            child: const Divider(
              thickness: 2,
              indent: 8,
              endIndent: 8,
              color: Colors.black,
            ),
          ),
          FamilyItems(member: family[7]),
        ],
      ),
    );
  }
}
