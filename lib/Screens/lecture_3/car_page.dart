import 'package:course_project/Models/lecture_3/car.dart';
import 'package:flutter/material.dart';

class CarScreen extends StatelessWidget {
  const CarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Cars myCar = Cars(2015, "Nissan");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).focusColor.withGreen(50),
        title: const Text(
          "Car Information",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
          child: Text(
        myCar.displayInfo(),
        style: const TextStyle(
          fontSize: 24,
        ),
      )),
    );
  }
}
