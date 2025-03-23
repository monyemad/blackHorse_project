import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField(
      {super.key,
      required this.controller,
      required this.label,
      required this.hint,
      this.maxLines = 1});

  final TextEditingController controller;
  final String label;
  final String hint;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          border: inputBorder(Colors.white),
          enabledBorder: inputBorder(Colors.white),
          hintText: hint,
          labelText: label,
          focusedBorder: inputBorder(Colors.green)),
      controller: controller,
      validator: (value){
        if(value!.isEmpty){
          return "Field is required";
        }
        return null;
      },
      maxLines: maxLines,
    );
  }

  OutlineInputBorder inputBorder(Color color) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: color));
  }
}
