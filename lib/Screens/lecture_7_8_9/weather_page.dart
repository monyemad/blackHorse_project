import 'package:course_project/Widgets/lecture_7_8_9/custom_app_bar.dart';
import 'package:course_project/Widgets/lecture_7_8_9/custom_category.dart';
import 'package:course_project/Widgets/lecture_7_8_9/custom_weather.dart';
import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: Column(
        children: [
          CustomCategory(),
          CustomWeather(),
        ],
      ),
    );
  }
}