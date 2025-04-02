// ignore_for_file: must_be_immutable

import 'package:course_project/Models/lecture_7_8_9/column_list.dart';
import 'package:course_project/Widgets/lecture_7_8_9/custom_column_list.dart';
import 'package:flutter/material.dart';

class CustomWeather extends StatelessWidget {
  CustomWeather({
    super.key,
  });

  List<NewsTitle> news = [
    // NewsTitle(
    //     "https://sportsfly.cbsistatic.com/fly-0911/bundles/sportsmediacss/images/fantasy/default-article-image-large.png",
    //     "Creighton Bluejays vs. St. John's Red Storm Live Score and Stats - March 15, 2025 Gametracker - CBS Sports",
    //     "Get real-time Men's College Basketball coverage and scores as Creighton Bluejays takes on St. John's Red Storm. We bring you the latest game previews, live stats, expert picks and recaps on CBSSports.com."),
    // NewsTitle(
    //     "https://nbcsports.brightspotcdn.com/dims4/default/732e6eb/2147483647/strip/true/crop/2401x1351+0+0/resize/1440x810!/quality/90/?url=https%3A%2F%2Fnbc-sports-production-nbc-sports.s3.us-east-1.amazonaws.com%2Fbrightspot%2F7b%2F37%2F2541d7614862941172134523dea0%2Fhttps-api-imagn.com%2Frest%2Fdownload%2FimageID%3D24242600",
    //     "Inside the Jordan Mason deal - NBC Sports",
    //     "The official numbers are in for the new deal to be signed by new Vikings running back Jordan Mason."),
    // NewsTitle(
    //     "https://d2b5htfb6s9xp9.cloudfront.net/images/2025/3/15/img_25682504_k16xO.jpg?preset=large.socialmediaimage",
    //     "Florida Flattens Alabama to Reach Title Game - Florida Gators",
    //     "The Gators used a wicked nine-minute display of offense and defense to break their SEC semifinal game open and roll the Crimson Tide 104-82 on Saturday"),
    // NewsTitle(
    //     "https://dims.apnews.com/dims4/default/6584f81/2147483647/strip/true/crop/2677x1506+0+0/resize/1440x810!/quality/90/?url=https%3A%2F%2Fassets.apnews.com%2Fd3%2F7a%2F6266f88c953e7700abe93cee0873%2F1975d0483ddf4ba3b507163e8c78e219",
    //     "No. 8 Tennessee downs No. 3 Auburn 70-65 to reach SEC Tournament championship game - The Associated Press",
    //     "Zakai Zeigler scored 20 points as No. 8 Tennessee held off regular-season champion and third-ranked Auburn 70-65 to reach the Southeastern Conference Tournament championship for the first time since 2022. The fourth-seeded Volunteers got revenge both for thei…"),
    // NewsTitle(
    //     "https://static.outkick.com/www.outkick.com/content/uploads/2025/03/gettyimages-2204738079.jpg",
    //     "The Golden Knights Lost A Game Because They Wanted Jack Eichel To Score An Empty-Netter On Sabres - Outkick",
    //     "The Vegas Golde Knights tried to twist the knife on the Buffalo Sabres and it completely blew up in their face."),
    // NewsTitle(
    //     "https://www.deseret.com/resizer/v2/SMCZ5B7Q45GW7IWFXL4Q6GBLTE.JPG?focal=0%2C0&auth=7a9fe2e1da8e6eec5d2d32aab088b8e04b6f6676886299183acc8454c14e0838&width=1200&height=630",
    //     "What BYU players said after Friday night's 20-point loss to No. 2 Houston — and how they plan to respond - Deseret News",
    //     "BYU point guard Dallin Hall gave a passionate speech during the Cougars' big loss to Houston on Friday night, reminding teammates to keep fighting."),
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
