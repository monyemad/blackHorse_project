import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.onPressed1,
      required this.onPressed2,
      required this.onPressed3,
      required this.team});

  final String text;
  final String team;
  final Function() onPressed1;
  final Function() onPressed2;
  final Function() onPressed3;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          team,
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 15),
        Text(
          text,
          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),
        MaterialButton(
            minWidth: 140,
            height: 40,
            onPressed: onPressed1,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            color: Colors.deepOrangeAccent,
            child: const Text(
              "ADD 1 Point",
              style: TextStyle(fontSize: 15),
            )),
        const SizedBox(height: 20),
        MaterialButton(
            minWidth: 140,
            height: 40,
            onPressed: onPressed2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            color: Colors.deepOrangeAccent,
            child: const Text(
              "ADD 2 Points",
              style: TextStyle(fontSize: 15),
            )),
        const SizedBox(height: 20),
        MaterialButton(
            minWidth: 140,
            height: 40,
            onPressed: onPressed3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            color: Colors.deepOrangeAccent,
            child: const Text(
              "ADD 3 Points",
              style: TextStyle(fontSize: 15),
            )),
      ],
    );
  }
}
