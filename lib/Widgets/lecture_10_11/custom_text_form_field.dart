import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField(
      {super.key,
        required this.controller,
        this.label,
        this.hint,
        this.maxLines = 1,
        this.onChange});

  final TextEditingController controller;
  final String? label;
  final String? hint;
  final int maxLines;
  final String? Function(String?)? onChange;

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
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value!.isEmpty) {
          return "Field is required";
        }
        return null;
      },
      onChanged: onChange,
      maxLines: maxLines,
    );
  }

  OutlineInputBorder inputBorder(Color color) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: color));
  }
}