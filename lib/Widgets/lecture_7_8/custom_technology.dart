// ignore_for_file: must_be_immutable

import 'package:course_project/Models/lecture_7_8/column_list.dart';
import 'package:course_project/Widgets/lecture_7_8/custom_column_list.dart';
import 'package:flutter/material.dart';

class CustomTechnology extends StatelessWidget {
  CustomTechnology({
    super.key,
  });

  List<NewsTitle> news = [
    NewsTitle(
        "https://fdn.gsmarena.com/imgroot/news/24/09/apple-iphone-16-pro-max-ifr/-952x498w6/gsmarena_000.jpg",
        "Apple to replace the iPhone 17 Pro Max with a 17 Ultra, report claims - GSMArena.com news - GSMArena.com",
        "It will likely offer a substantial hardware upgrade over the iPhone 16 Pro Max. Reportedly, Apple is preparing to launch an iPhone 17 Ultra this year. But..."),
    NewsTitle(
        "https://i0.wp.com/9to5google.com/wp-content/uploads/sites/4/2025/02/Gemini-on-Galaxy-S25.jpg?resize=1200%2C628&quality=82&strip=all&ssl=1",
        "Google rolling out latest Gemini 2.0 models, free Deep Research to Android, iOS - 9to5Google",
        "Google has widely rolled out the latest Gemini models, like 2.0 Flash Thinking (experimental), to the web, Android, and iOS apps."),
    NewsTitle(
        "https://cdn.wccftech.com/wp-content/uploads/2024/08/Valve-SteamOS-ASUS-ROG-Ally-Handhelds.jpg",
        "Valve’s Promise Comes True With SteamOS 3.7.0 Preview: Offers Support To Non-Steam Deck Handhelds And Plasma 6 For Linux Desktop-Like Experience - Wccftech",
        "The Gators used a wicked nine-minute display of offense and defense to break their SEC semifinal game open and roll the Crimson Tide 104-82 on Saturday"),
    NewsTitle(
        "https://www.androidauthority.com/wp-content/uploads/2025/02/Oura-Ring-4-Baselines-scaled.jpg",
        "5 things I wish I would've known before purchasing an Oura Ring - Android Authority",
        "The Oura Ring offers powerful, passive health tracking, but there are other factors of the experience worth considering before buying."),
    NewsTitle(
        "https://helios-i.mashable.com/imagery/articles/049v5lBa3W6VPIWMe4fqzC3/hero-image.fill.size_1200x675.v1742057247.jpg",
        "AI search tools are confidently wrong a lot of the time, study finds - Mashable",
        "60 percent of queries got wrong answers."),
    NewsTitle(
        "https://gizmodo.com/app/uploads/2025/01/apple-siri-lawsuit.jpg",
        "Apple Overpromised on AI Siri and Its Staff Is Not Happy About it - Gizmodo",
        "Siri chief reportedly called the delay in features \"ugly.\""),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
