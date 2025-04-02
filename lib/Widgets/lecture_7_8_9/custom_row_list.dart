// ignore_for_file: must_be_immutable

import 'package:course_project/Models/lecture_7_8_9/row_list.dart';
import 'package:flutter/material.dart';

class CustomRowList extends StatelessWidget {
  CustomRowList({super.key,required this.category});

  CategoriesList category;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 200,
      margin: const EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  category.image!),
            fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.black)
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.white70)
        ),
        child: TextButton(
          onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(
              builder: category.build!
          ));},
          child:Text(category.text!,
          style: const TextStyle(
            color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20),),)
        ),
      );
  }
}
