import 'package:flutter/material.dart';

class TrafficLightScreen extends StatelessWidget {
  const TrafficLightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 80,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(20)),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.red,
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.amber,
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
