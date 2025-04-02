import 'package:flutter/material.dart';

class CustomSizes extends StatelessWidget {
  const CustomSizes(
      {super.key,
      required this.text,
      required this.input,
      required this.onPressed,
      required this.onPressed1,
      required this.icon,
      required this.icon1});

  final String text;
  final String input;
  final VoidCallback onPressed;
  final VoidCallback onPressed1;
  final Widget icon;
  final Widget icon1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xff24263B),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              color: Color(0xff8B8C9E),
            ),
          ),
          Text(
            input,
            style: const TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 42,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: const Color(0xff8B8C9E)),
                child: IconButton(
                  color: Colors.white,
                  onPressed: onPressed,
                  icon: icon,
                ),
              ),
              Container(
                height: 42,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: const Color(0xff8B8C9E)),
                child: IconButton(
                  icon: icon1,
                  color: Colors.white,
                  onPressed: onPressed1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
