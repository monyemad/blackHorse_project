import 'package:course_project/Widgets/lecture_7_8_9/custom_app_bar.dart';
import 'package:course_project/Widgets/lecture_7_8_9/custom_category.dart';
import 'package:course_project/Widgets/lecture_7_8_9/custom_technology.dart';
import 'package:flutter/material.dart';

class TechnologyScreen extends StatelessWidget {
  const TechnologyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: Column(
        children: [
          CustomCategory(),
          CustomTechnology(),
        ],
      ),
    );
  }
}