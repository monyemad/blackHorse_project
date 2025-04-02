import 'package:course_project/Screens/lecture_5/colors_page.dart';
import 'package:course_project/Screens/lecture_5/family_page.dart';
import 'package:course_project/Screens/lecture_5/numbers_page.dart';
import 'package:course_project/Widgets/lecture_5/custom_category.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Languages",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red[600],
      ),
      body: Column(
        children: [
          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NumbersScreen();
                }));
              },
              child: const CustomCategories(
                  text: "Numbers", color: Colors.lightGreen)),
          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ColorsScreen();
                }));
              },
              child: CustomCategories(
                  text: "Colors", color: Colors.deepPurple.shade400)),
          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FamilyScreen();
                }));
              },
              child: const CustomCategories(
                  text: "Family Members", color: Colors.cyan))
        ],
      ),
    );
  }
}
