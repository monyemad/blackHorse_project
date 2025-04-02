import 'package:flutter/material.dart';

class CustomGender extends StatelessWidget {
  const CustomGender(
      {super.key,
      required this.text,
      required this.icon,
      required this.onTap,
      required this.color, required this.iconColor});

  final String text;
  final IconData icon;
  final VoidCallback onTap;
  final Color color;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            width: 155,
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: color),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: iconColor,
                  size: 140,
                ),
                Text(
                  text,
                  style:
                      const TextStyle(fontSize: 20, color: Color(0xff8B8C9E)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
