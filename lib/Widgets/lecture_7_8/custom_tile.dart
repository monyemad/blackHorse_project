// ignore_for_file: must_be_immutable

import 'package:course_project/Models/lecture_7_8/column_list.dart';
import 'package:course_project/Widgets/lecture_7_8/custom_column_list.dart';
import 'package:flutter/material.dart';

class CustomNewsTile extends StatelessWidget {
  CustomNewsTile({
    super.key,
  });

  List<NewsTitle> news = [
    NewsTitle(
        "https://www.thestreet.com/.image/ar_1.91%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cg_faces:center%2Cq_auto:good%2Cw_1200/MTkwODY1NjA3MjUwNDIxNDMw/retail-shopping-lead-js.jpg",
        "Beloved retailer in Chapter 11 bankruptcy angers customers - TheStreet",
        "The retail chain has just made a move that infuriated its loyal customer base."),
    NewsTitle(
        "https://www.thetimes.com/imageserver/image/%2F579d39eb-6e23-4de2-8e8c-19c122e4440b.jpg?crop=1600%2C900%2C0%2C0&resize=1200",
        "Facebook’s secrets, by the insider who Zuckerberg tried to silence - The Times",
        "Careless People author and former Meta director Sarah Wynn-Williams reveals what it was like ‘babysitting’ her boss"),
    NewsTitle(
        "https://imageio.forbes.com/specials-images/imageserve/67d4ca738c86e776233e6247/0x0.jpg?format=jpg&height=900&width=1600&fit=bounds",
        "Postal Service To Layoff 10,000 Employees Via New Deal With DOGE - Forbes",
        "The United States Postal Service (USPS) has announced plans to reduce its workforce by 10,000 employees via a new deal with DOGE, designed for greater cost savings."),
    NewsTitle(
        "https://www.thestreet.com/.image/ar_1.91%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cg_faces:center%2Cq_auto:good%2Cw_1200/MTkwODQ4Nzk4NjI4MzI0OTQ1/dollar-general.jpg",
        "Dollar General CEO flags alarming shift in customer behavior - TheStreet",
        "The CEO is sounding the alarm on a growing problem."),
    NewsTitle(
        "https://image.cnbcfm.com/api/v1/image/108103988-1739914222500-gettyimages-2200464038-l1123504_copy_y8rowqdt.jpeg?v=1739914342&w=1920&h=1080",
        "Goodbye to 'bags fly free' on Southwest, the last airline freebie in America - CNBC",
        "Southwest's customer-focused business model won it a loyal following during its half-century of flying."),
    NewsTitle(
        "https://static.dw.com/image/71319793_6.jpg",
        "SpaceX's Starship to leave for Mars end of 2026, Musk says - DW (English)",
        "Despite recent failures, Elon Musk insisted the world's most powerful rocket will soon blast off to the Red Planet. The tech billionaire said human landings could begin before the end of the decade."),
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
