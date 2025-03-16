import 'package:course_project/Screens/lecture_6/bmi_screen.dart';
import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  const BMIResultScreen({
    super.key,
    required this.result,
    required this.state,
    required this.review,
  });

  final int result;
  final String state;
  final String review;

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 22.0),
              child: Text(
                "Your Result",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ),
            Center(
              child: Container(
                width: 319,
                height: 503,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xff333244)),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      state.toString(),
                      style: const TextStyle(
                          fontSize: 20, color: Color(0xff21BF73)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      '$result',
                      style: const TextStyle(
                        fontSize: 64,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Center(
                        child: Text(
                          review.toString(),
                          style: const TextStyle(
                              fontSize: 16, color: Color(0xff8B8C9E)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xffE83D67),
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BmiScreen(),
                        ));
                  },
                  child: const Text(
                    'Re - Calculate',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
