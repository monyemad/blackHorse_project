// ignore_for_file: must_be_immutable

import 'package:course_project/Models/lecture_7_8_9/column_list.dart';
import 'package:flutter/material.dart';

class CustomColumnList extends StatelessWidget {
  CustomColumnList({
    super.key,
    required this.news
  });

  NewsTitle news;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            news.image??"https://img.freepik.com/free-vector/press-mass-media-broadcasting-studio-journalists-reporters-characters-hot-online-information-breaking-news-headline-news-content-concept-illustration_335657-2587.jpg?ga=GA1.1.836629263.1742762812&semt=ais_hybrid",
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 8,),
        Text(news.title,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600),maxLines: 2,overflow: TextOverflow.ellipsis,),
        const SizedBox(height: 8,),
        Text(news.subTitle ?? "The Article ended",style: const TextStyle(fontSize: 16,color: Colors.black26),),
      ],
    );
  }
}