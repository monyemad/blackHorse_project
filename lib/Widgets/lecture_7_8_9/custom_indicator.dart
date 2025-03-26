import 'package:flutter/material.dart';

class CustomCircularIndicator extends StatelessWidget {
  const CustomCircularIndicator({
    super.key, required this.color, required this.backgroundColor,
  });
  final Color color;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: CircularProgressIndicator(
          backgroundColor: backgroundColor,
          color: color,
          strokeWidth: 8,
          strokeAlign: 2,
        ),
      ),
    );
  }
}