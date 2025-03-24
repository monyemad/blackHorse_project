import 'package:flutter/material.dart';

class CustomCircularIndicator extends StatelessWidget {
  const CustomCircularIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.blueGrey,
          color: Colors.deepOrange,
          strokeWidth: 8,
          strokeAlign: 2,
        ),
      ),
    );
  }
}