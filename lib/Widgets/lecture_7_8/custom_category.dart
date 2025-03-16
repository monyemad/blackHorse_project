// ignore_for_file: must_be_immutable

import 'package:course_project/Models/lecture_7_8/row_list.dart';
import 'package:course_project/Widgets/lecture_7_8/custom_row_list.dart';
import 'package:flutter/material.dart';

class CustomCategory extends StatelessWidget {
  CustomCategory({
    super.key,
  });

  List<CategoriesList> category=[
    CategoriesList('assets/images/business.png', "Business"),
    CategoriesList('assets/images/health.png', "Health"),
    CategoriesList('assets/images/weather.avif', "Weather"),
    CategoriesList('assets/images/science.avif', "Science"),
    CategoriesList('assets/images/sports.png', "Sports"),
    CategoriesList('assets/images/technology.png', "Technology"),
    CategoriesList('assets/images/general.jpg', "General"),
    CategoriesList('assets/images/entertainment.png', "Entertainment"),
  ];

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