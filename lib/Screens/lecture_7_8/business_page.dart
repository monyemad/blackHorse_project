import 'package:course_project/Widgets/lecture_7_8/custom_app_bar.dart';
import 'package:course_project/Widgets/lecture_7_8/custom_category.dart';
import 'package:course_project/Widgets/lecture_7_8/custom_tile.dart';
import 'package:flutter/material.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: Column(
        children: [
          CustomCategory(),
          CustomNewsTile(),
        ],
      ),
    );
  }
}