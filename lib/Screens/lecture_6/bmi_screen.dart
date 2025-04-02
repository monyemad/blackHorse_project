import 'dart:math';

import 'package:course_project/Screens/lecture_6/bmi_result.dart';
import 'package:course_project/Widgets/lecture_6/custom_gender.dart';
import 'package:course_project/Widgets/lecture_6/custom_sizes.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale = true;
  double height = 150;
  int weight = 60;
  int age = 26;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C2135),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'BMI Calculator',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff242638),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomGender(
                      text: "Male",
                      icon: Icons.male_rounded,
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      color: isMale
                          ? const Color(0xff24263B)
                          : const Color(0xff333244), iconColor: Colors.blue,),
                  CustomGender(
                    text: "Female",
                    icon: Icons.female_rounded,
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    color: !isMale
                        ? const Color(0xff24263B)
                        : const Color(0xff333244), iconColor: Colors.pink,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  const Text(
                    'HEIGHT',
                    style: TextStyle(fontSize: 20, color: Color(0xff8B8C9E)),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '${height.round()}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      const Text(
                        'CM',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    activeColor: const Color(0xffE83D67),
                    value: height,
                    max: 200,
                    min: 100,
                    onChanged: (value) {
                      setState(() {
                        height = value;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomSizes(
                      text: "Weight",
                      input: "$weight",
                      onPressed: () {
                        setState(() {
                          weight--;
                        });
                      },
                      onPressed1: () {
                        setState(() {
                          weight++;
                        });
                      },
                      icon: const Icon(Icons.remove_rounded),
                      icon1: const Icon(Icons.add_rounded)),
                  CustomSizes(
                      text: "Age",
                      input: "$age",
                      onPressed: () {
                        setState(() {
                          age--;
                        });
                      },
                      onPressed1: () {
                        setState(() {
                          age++;
                        });
                      },
                      icon: const Icon(Icons.remove_rounded),
                      icon1: const Icon(Icons.add_rounded)),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xffE83D67),
                ),
                child: MaterialButton(
                  onPressed: () {
                    double result = weight / pow(height / 100, 2);
                    String getState() {
                      if (result < 18.5) {
                        return "Underweight";
                      } else if (result >= 18.5 && result < 24.9) {
                        return "Normal";
                      } else if (result >= 24.9 && result < 29.9) {
                        return "Overweight";
                      }
                      return "Obese";
                    }
          
                    String getReview() {
                      if (result < 18.5) {
                        return "You have a Lower than Normal Body Weight. You can eat a bit more.";
                      } else if (result >= 18.5 && result < 24.9) {
                        return "You have a Normal Body Weight,\n Good Job.";
                      } else if (result >= 24.9 && result < 29.9) {
                        return "You have a Higher than Normal Body Weight. Try to exercise more.";
                      }
                      return "Obese";
                    }
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BMIResultScreen(
                            result: result.round(),
                            state: getState(),
                            review: getReview(),
                          ),
                        ));
                  },
                  child: const Text(
                    'Calculate',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
