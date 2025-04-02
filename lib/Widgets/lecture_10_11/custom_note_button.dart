import 'package:flutter/material.dart';

class CustomNoteButton extends StatelessWidget {
  const CustomNoteButton({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        minWidth: 140,
        height: 40,
        onPressed: onPressed,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: Colors.teal,
        child: const Text(
          "Add",
          style: TextStyle(fontSize: 15),
        ));
  }
}
