import 'package:course_project/Widgets/lecture_5/custom_button.dart';
import 'package:flutter/material.dart';

class PointsScreen extends StatefulWidget {
  const PointsScreen({super.key});

  @override
  State<PointsScreen> createState() => _PointsScreenState();
}

class _PointsScreenState extends State<PointsScreen> {
  int numA = 0;
  int numB = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Points Counter"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  text: "$numA",
                  onPressed1: () {
                    setState(() {
                      numA++;
                    });
                  },
                  onPressed2: () {
                    setState(() {
                      numA = numA + 2;
                    });
                  },
                  onPressed3: () {
                    setState(() {
                      numA = numA + 3;
                    });
                  },
                  team: 'Team A',
                ),
                CustomButton(
                  text: "$numB",
                  onPressed1: () {
                    setState(() {
                      numB++;
                    });
                  },
                  onPressed2: () {
                    setState(() {
                      numB = numB + 2;
                    });
                  },
                  onPressed3: () {
                    setState(() {
                      numB = numB + 3;
                    });
                  },
                  team: 'Team B',
                )
              ],
            ),
            const SizedBox(height: 60),
            MaterialButton(
                minWidth: 200,
                height: 50,
                onPressed: () {
                  setState(() {
                    numA = 0;
                    numB = 0;
                  });
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: Colors.deepOrangeAccent,
                child: const Text(
                  "RESET",
                  style: TextStyle(fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
