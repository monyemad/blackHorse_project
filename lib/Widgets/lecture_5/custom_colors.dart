import 'package:course_project/Models/classes_lecture_5/colors_class.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ColorItems extends StatelessWidget {
  ColorItems({super.key, required this.item});

  ColorItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10),
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: item.color!,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(item.krName!,
                  style: const TextStyle(
                      fontSize: 25, fontStyle: FontStyle.italic)),
              Text(item.enName!,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
            ],
          ),
          Container(
              padding: const EdgeInsets.only(right: 10),
              alignment: Alignment.centerRight,
              child: const Icon(Icons.play_arrow_rounded))
        ],
      ),
    );
  }
}
