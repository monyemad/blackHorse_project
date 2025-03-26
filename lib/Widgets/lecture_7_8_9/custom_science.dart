import 'package:course_project/Models/lecture_7_8_9/column_list.dart';
import 'package:course_project/Services/news_service.dart';
import 'package:course_project/Widgets/lecture_7_8_9/custom_column_list.dart';
import 'package:course_project/Widgets/lecture_7_8_9/custom_indicator.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CustomScience extends StatefulWidget {
  const CustomScience({
    super.key,
  });

  @override
  State<CustomScience> createState() => _CustomScienceState();
}

class _CustomScienceState extends State<CustomScience> {
  List<NewsTitle> news = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getNews();
  }

  Future<void> getNews() async {
    news = await NewsService(Dio()).getNews(category: 'science');
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? CustomCircularIndicator(backgroundColor: Colors.blueGrey,
      color: Colors.deepOrange,)
        : Expanded(
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: news.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomColumnList(
                      news: news[index],
                    ),
                  );
                }),
          );
  }
}
