// ignore_for_file: must_be_immutable

import 'package:course_project/Models/lecture_7_8/column_list.dart';
import 'package:course_project/Widgets/lecture_7_8/custom_column_list.dart';
import 'package:flutter/material.dart';

class CustomGeneral extends StatelessWidget {
  CustomGeneral({
    super.key,
  });

  List<NewsTitle> news = [
    NewsTitle(
        "https://dims.apnews.com/dims4/default/ef03b82/2147483647/strip/true/crop/6000x3375+0+312/resize/1440x810!/quality/90/?url=https%3A%2F%2Fassets.apnews.com%2Fb8%2F25%2F2f865a9f93c7c05efbfb976497e2%2Fc773926fa0044dcc8c419a0bce9de6b6",
        "Education Department staff cuts could limit options for families of kids with disabilities - The Associated Press",
        "For parents of kids with disabilities, advocating for their child can be complicated, time-consuming — and expensive. Advocates for kids with disabilities say changes at the Education Department are likely to make the process even more difficult. When a paren…"),
    NewsTitle(
        "https://media.cnn.com/api/v1/images/stellar/prod/2025-03-15t131025z-1148523927-rc2kddarmb14-rtrmadp-3-israel-palestinians-gaza.JPG?c=16x9&q=w_800,c_fill",
        "Nine killed in Israeli attack in northern Gaza, officials say, in deadliest strike since ceasefire began - CNN",
        "At least nine people have been killed and several others injured in an Israeli strike in Beit Lahia, northern Gaza, the enclave’s Government Media Office said Saturday, making it the deadliest incident since a ceasefire went into effect in January."),
    NewsTitle(
        "https://nypost.com/wp-content/uploads/sites/2/2025/03/100549354.jpg?quality=75&strip=all&w=1024",
        "https://nypost.com/wp-content/uploads/sites/2/2025/03/100549354.jpg?quality=75&strip=all&w=1024",
        "The death toll continues to rise."),
    NewsTitle(
        "https://static.politico.com/00/46/4c5d34144da0902381408cdeaf7f/russia-ukraine-war-81583.jpg",
        "Russia and Ukraine trade overnight aerial attacks after Putin sets out conditions for ceasefire - POLITICO",
        "The barrage comes less than 24 hours after Russian President Vladimir Putin discussed details of the U.S. proposal for a 30-day ceasefire with a U.S. envoy."),
    NewsTitle(
        "https://static.dw.com/image/71933198_6.jpg",
        "Serbia: Protesters flood Belgrade with Vucic under pressure - DW (English)",
        "Students, farmers and military veterans joined possibly the largest anti-government rally in Belgrade's history to demand accountability for a deadly canopy collapse in Novi Sad."),
    NewsTitle(
        "https://media.cnn.com/api/v1/images/stellar/prod/ap25074689638009-20250316085558477.jpg?c=16x9&q=w_800,c_fill",
        "Trump says ‘decisive’ military action against Houthis in Yemen is underway - CNN",
        "President Trump says he has ordered a “decisive” military action against Houthi rebels in Yemen, opening a new salvo against the Iran-backed group that has targeted shipping lanes in the Red Sea."),
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
