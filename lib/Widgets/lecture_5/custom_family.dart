import 'package:course_project/Models/classes_lecture_5/family_class.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FamilyItems extends StatelessWidget {
  FamilyItems({super.key, required this.member});

  Family member;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      color: Colors.purple.shade200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            image: NetworkImage(member.image!),
            width: 100,
            height: 100,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(member.krName!,
                  style: const TextStyle(
                      fontSize: 25, fontStyle: FontStyle.italic)),
              Text(member.enName!,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(right: 10),
            alignment: Alignment.centerRight,
            child: const Icon(Icons.play_arrow_rounded),
          )
        ],
      ),
    );
  }
}
