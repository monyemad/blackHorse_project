import 'package:course_project/Models/lecture_7_8_9/column_list.dart';
import 'package:dio/dio.dart';

class NewsService {
  Dio dio;
  NewsService(this.dio);
  Future<List<NewsTitle>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          "https://newsapi.org/v2/top-headlines?country=us&apiKey=c8a36868b66a498ea19934773a1e2543&category=$category");
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<NewsTitle> articleList = [];
      for (var article in articles) {
        NewsTitle articleModel = NewsTitle(
            image: article['urlToImage'],
            title: article['title'],
            subTitle: article['description']);
        articleList.add(articleModel);
      }
      return articleList;
    } catch (error) {
      return [];
    }
  }
}