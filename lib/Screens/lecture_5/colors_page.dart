// ignore_for_file: must_be_immutable

import 'package:course_project/Models/classes_lecture_5/colors_class.dart';
import 'package:course_project/Widgets/lecture_5/custom_colors.dart';
import 'package:flutter/material.dart';

class ColorsScreen extends StatelessWidget {
  ColorsScreen({super.key});
  List<ColorItem> color = [
    ColorItem(
      Colors.black,
      "black",
      "Geom-eunsaeg",
    ),
    ColorItem(
      Colors.red,
      "red",
      "Ppalgansaeg",
    ),
    ColorItem(
      Colors.yellow,
      "yellow",
      "Nolansaeg",
    ),
    ColorItem(
      Colors.green,
      "green",
      "Nogsaeg",
    ),
    ColorItem(
      Colors.blue,
      "blue",
      "Palansaeg",
    ),
    ColorItem(
      Colors.orange,
      "orange",
      "Juhwangsaeg",
    ),
    ColorItem(
      Colors.pink,
      "pink",
      "Bunhongsaeg",
    ),
    ColorItem(
      Colors.purple,
      "purple",
      "Bola",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Colors", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple.shade400,
      ),
      body: ListView(children: [
        ColorItems(item: color[0]),
        const Divider(
          thickness: 2,
          indent: 8,
          endIndent: 8,
        ),
        ColorItems(item: color[1]),
        const Divider(
          thickness: 2,
          indent: 8,
          endIndent: 8,
        ),
        ColorItems(item: color[2]),
        const Divider(
          thickness: 2,
          indent: 8,
          endIndent: 8,
        ),
        ColorItems(item: color[3]),
        const Divider(
          thickness: 2,
          indent: 8,
          endIndent: 8,
        ),
        ColorItems(item: color[4]),
        const Divider(
          thickness: 2,
          indent: 8,
          endIndent: 8,
        ),
        ColorItems(item: color[5]),
        const Divider(
          thickness: 2,
          indent: 8,
          endIndent: 8,
        ),
        ColorItems(item: color[6]),
        const Divider(
          thickness: 2,
          indent: 8,
          endIndent: 8,
        ),
        ColorItems(item: color[7])
      ]),
    );
  }
}
