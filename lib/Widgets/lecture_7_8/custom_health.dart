// ignore_for_file: must_be_immutable

import 'package:course_project/Models/lecture_7_8/column_list.dart';
import 'package:course_project/Widgets/lecture_7_8/custom_column_list.dart';
import 'package:flutter/material.dart';

class CustomHealth extends StatelessWidget {
  CustomHealth({
    super.key,
  });

  List<NewsTitle> news = [
    NewsTitle(
        "https://neurosciencenews.com/files/2025/03/hsv1-neurology-neuroscience.jpg",
        "Herpes Virus Linked to Long-Term Brain and Neurological Problems - Neuroscience News",
        "A new study reveals that herpes simplex virus-1 (HSV-1), commonly known for causing cold sores, can travel through the nasal cavity directly to the brain, causing severe and lasting neurological symptoms."),
    NewsTitle(
        "https://www.eatingwell.com/thmb/lhc0TJvuQGIgwxS91xYwpdSMMVM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/What-Happens-to-Your-Body-When-You-Take-Coenzyme-Q10-792072434fe64726b2cb94f3796c35f7.jpg",
        "What Happens to Your Body When You Take CoQ10 Regularly - EatingWell",
        "Coenzyme Q10 may improve heart health, boost energy and promote cellular health. Learn the research behind CoQ10, if it’s safe and the proper dose."),
    NewsTitle(
        "https://s.hdnux.com/photos/01/47/36/40/27125778/3/rawImage.jpg",
        "Newborn babies exposed to measles in Texas hospital amid outbreak - mySA",
        "Newborn babies and their families were exposed to measles at a hospital in Lubbock amid the fast-growing measles outbreak in Texas."),
    NewsTitle(
        "https://www.oregonlive.com/resizer/v2/OIL72L3ZKZA3TOT7VROF722APM.JPG?auth=66b75d5b8e4c3943f484a97c228c6d963295ed2c9fc6f5ee1b7f37a20d541cba&width=1280&quality=90",
        "Oregon health Q&A: Will COVID-19 vaccines be updated again in coming months? - OregonLive",
        "We do expect COVID vaccines may be updated with a new formula next fall for the 2025-2026 season but not for the current season. Questions are answered by experts at the Oregon Health Authority, other state agencies or community partners."),
    NewsTitle(
        "https://www.cnet.com/a/img/resize/93e9b6a2ff948d656a3e1418f9f0c301cbf9f3eb/hub/2025/02/28/205124e3-60ee-46ca-a2e0-55d350308305/person-pouring-creatine-powder.jpg?auto=webp&fit=crop&height=675&width=1200",
        "Creatine: Overall Health Benefits, Supplements and the Right Dosage - CNET",
        "This is the type of creatine you should take to reach your fitness goals, according to experts."),
    NewsTitle(
        "https://www.eatingwell.com/thmb/qVNZexRObQshnsz6KIQEwj3iLog=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/The-Best-7-Day-Walking-Plan-to-Lose-Weight-79b5285110a24315956e0fdba47d0863.jpg",
        "The Best 7-Day Walking Plan for Weight Loss, Created by Certified Trainers - EatingWell",
        "Walking is one of the best exercises for weight loss. Certified personal trainers explain why, plus an easy 7-day walking plan for weight loss."),
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
