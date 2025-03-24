import 'package:course_project/Widgets/lecture_4/custom_box.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomBox(text: "RED", color: Colors.red),
                  CustomBox(
                    text: 'YELLOW',
                    color: Colors.amber,
                  ),
                  CustomBox(text: "GREEN", color: Colors.green)
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomBox(text: "BLUE", color: Colors.blue),
                  CustomBox(
                    text: 'ORANGE',
                    color: Colors.orange,
                  ),
                  CustomBox(text: "PINK", color: Colors.pink)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
