import 'package:course_project/Models/classes_lecture_5/numbers_class.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Items extends StatelessWidget {
  Items({super.key, required this.number});

  Numbers number;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            image: AssetImage(number.image!),
            width: 100,
            height: 100,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(number.krName!,
                  style: const TextStyle(
                      fontSize: 25, fontStyle: FontStyle.italic)),
              Text(number.enName!,
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
