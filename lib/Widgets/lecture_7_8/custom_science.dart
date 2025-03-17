// ignore_for_file: must_be_immutable

import 'package:course_project/Models/lecture_7_8/column_list.dart';
import 'package:course_project/Widgets/lecture_7_8/custom_column_list.dart';
import 'package:flutter/material.dart';

class CustomScience extends StatelessWidget {
  CustomScience({
    super.key,
  });

  List<NewsTitle> news = [
    NewsTitle(
        "https://jetpack.com/redirect/?source=sigenerate&query=t%3DeyJpbWciOiJodHRwczpcL1wvc3BhY2VuZXdzLmNvbVwvd3AtY29udGVudFwvdXBsb2Fkc1wvMjAyNVwvMDNcL0dtRWpVbEFYTUFBb3Jqdi03MTZ4MTAyNC5qcGVnIiwidHh0IjoiSW50ZWxsaWdlbmNlIGFuZCBkdWFsLXVzZSBjb21tZXJjaWFsIHNhdGVsbGl0ZXMgbGF1bmNoIG9uIFRyYW5zcG9ydGVyLTEzIiwidGVtcGxhdGUiOiJmdWxsc2NyZWVuIiwiYmxvZ19pZCI6ODA2ODE5Nzl9.X4P_j0AvDc-Kr7gQ33YQTIZKQGUiEgVkwCxjbt5R9hQMQ",
        "Intelligence and dual-use commercial satellites launch on Transporter-13 - SpaceNews",
        "Among the 74 payloads on SpaceX’s Transporter-13 mission was a technology demonstrator from the National Reconnaissance Office"),
    NewsTitle(
        "https://cff2.earth.com/uploads/2025/03/15091347/Microlightning.jpg",
        "Microlightning from water droplets may have sparked life on Earth - Earth.com",
        "Study discovered that tiny electrical sparks, called microlightning, form when water droplets collide. These can create organic molecules."),
    NewsTitle(
        "https://dailygalaxy.com/wp-content/uploads/2025/03/LUCA-Is-Much-Older-Than-Scientists-Thought.jpg",
        "LUCA Is Much Older Than Scientists Thought - The Daily Galaxy --Great Discoveries Channel",
        "New research suggests that LUCA, the last universal common ancestor of all life, may be far older than previously thought—pushing its origins closer to 4 billion years ago. This discovery challenges our understanding of life’s beginnings and hints at what it …"),
    NewsTitle(
        "https://imageio.forbes.com/specials-images/imageserve/67d5887bef82bb8405d92b39/0x0.jpg?format=jpg&crop=1260,708,x0,y0,safe&height=900&width=1600&fit=bounds",
        "Northern Lights Forecast: These 10 States Could See Aurora Borealis Tonight - Forbes",
        "The National Oceanic and Atmospheric Administration forecasts isolated minor geomagnetic storms throughout Saturday."),
    NewsTitle(
        "https://gizmodo.com/app/uploads/2025/03/volcano.jpg",
        "An Early Mass Extinction Event Cooked Our Planet and Erased Most Life - Gizmodo",
        "A new study reveals that Earth's biomes changed dramatically in the wake of mass volcanic eruptions 252 million years ago."),
    NewsTitle(
        "https://cdn.mos.cms.futurecdn.net/VVUzbNjHoBrhgtXMAqH4zE-1200-80.jpg",
        "4 rocky exoplanets found around Barnard`s Star, one of the sun`s nearest neighbors - Space.com",
        "The planets are all too hot for life as we know it, but astronomers haven’t given up searching for more planets in Barnard's Star's habitable zone."),
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
