// ignore_for_file: must_be_immutable

import 'package:course_project/Models/lecture_7_8/column_list.dart';
import 'package:course_project/Widgets/lecture_7_8/custom_column_list.dart';
import 'package:flutter/material.dart';

class CustomEntertainment extends StatelessWidget {
  CustomEntertainment({
    super.key,
  });

  List<NewsTitle> news = [
    NewsTitle(
        "https://image.koreaboo.com/2025/03/FEATURED-IMAGE-2025-03-15T145810.674.jpg",
        "Update On Kim Soo Hyun’s Current Mental State Enrages Netizens - Koreaboo",
        "Gold Medalist, Kim Soo Hyun's agency, recently updated on the idol's mental state, sharing his current feeling and sparking enraged reactions from netizens."),
    NewsTitle(
        "https://nypost.com/wp-content/uploads/sites/2/2025/03/taylor-swift-celebrates-travis-kelce-97420801.jpg?quality=75&strip=all&w=1024",
        "Travis Kelce, Taylor Swift go out for NYC date in first sighting together since Chiefs’ Super Bowl loss - New York Post ",
        "Friday was date night for Travis Kelce and Taylor Swift."),
    NewsTitle(
        "https://i.insider.com/67d5efd2b8b41a9673faca13?width=1200&format=jpeg",
        "Kim Kardashian posts photo shoot with a Tesla Cybertruck and Optimus robot - Business Insider",
        "One photo showed Kim Kardashian posing in the bed of a Cybertruck, while another featured her cuddling with an Optimus robot near the beach."),
    NewsTitle(
        "https://media.khou.com/assets/KBMT/images/66ab6b86-e740-430a-ba02-26694c717324/20250315T234659/66ab6b86-e740-430a-ba02-26694c717324_1140x641.jpg",
        "Rodeo Houston continues after Journey electrical fire, says they'll be in contact with ticketholders - KHOU.com",
        "Rodeo Houston kept the show going after Friday’s Journey concert was cut short. Some fans were understanding that what happened was out of anyone’s control."),
    NewsTitle(
        "https://deadline.com/wp-content/uploads/2025/03/snow-white.jpg?w=1000",
        "‘Snow White’ Red Carpet Photos: Rachel Zegler, Gal Gadot, Marc Platt, Bob Iger & More - Deadline",
        "Disney's live-action 'Snow White' had its world premiere at Hollywood's El Capitan Theatre today ahead of its March 21 release in theaters."),
    NewsTitle(
        "https://gizmodo.com/app/uploads/2024/11/Lilo-and-Stitch-teaser.jpg",
        "The Lilo & Stitch Trailer Has Given Disney Another Brag-Worthy Milestone - Gizmodo",
        "Looks like Disney's putting its live-action faith in the Lilo & Stitch remake and taking the chance to highlight its social media impact."),
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
