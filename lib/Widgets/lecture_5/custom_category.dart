import 'package:flutter/material.dart';

class CustomCategories extends StatelessWidget {
  const CustomCategories({super.key, required this.text, required this.color});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Container(
          alignment: Alignment.centerLeft,
          height: 50,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: color),
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 25),
          )),
    );
  }
}
