// ignore_for_file: must_be_immutable

import 'package:course_project/Models/lecture_7_8_9/row_list.dart';
import 'package:course_project/Screens/lecture_7_8_9/business_page.dart';
import 'package:course_project/Screens/lecture_7_8_9/entertainment_page.dart';
import 'package:course_project/Screens/lecture_7_8_9/general_page.dart';
import 'package:course_project/Screens/lecture_7_8_9/health_page.dart';
import 'package:course_project/Screens/lecture_7_8_9/science_page.dart';
import 'package:course_project/Screens/lecture_7_8_9/sports_page.dart';
import 'package:course_project/Screens/lecture_7_8_9/technology_page.dart';
import 'package:course_project/Widgets/lecture_7_8_9/custom_row_list.dart';
import 'package:flutter/material.dart';

class CustomCategory extends StatelessWidget {
  CustomCategory({
    super.key,
  });

  List<CategoriesList> category=[
    CategoriesList('assets/images/business.png', "Business",(context) => const BusinessScreen()),
    CategoriesList('assets/images/health.png', "Health",(context) => const HealthScreen()),
    CategoriesList('assets/images/weather.avif', "Weather",null),
    CategoriesList('assets/images/science.avif', "Science",(context) => const ScienceScreen()),
    CategoriesList('assets/images/sports.png', "Sports",(context) => const SportsScreen()),
    CategoriesList('assets/images/technology.png', "Technology",(context) => const TechnologyScreen()),
    CategoriesList('assets/images/general.jpg', "General",(context) => const GeneralScreen()),
    CategoriesList('assets/images/entertainment.png', "Entertainment",(context) => const EntertainmentScreen()),
  ];

  static BuildContext context=context;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          itemBuilder: (context,index){
            return CustomRowList(category: category[index]);
          }),
    );
  }
}