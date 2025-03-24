import 'package:course_project/Widgets/lecture_4/custom_info.dart';
import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            CircleAvatar(
              radius: 100,
              child: Image(
                  image: NetworkImage(
                      "https://img.freepik.com/premium-vector/avatar-profile-icon-flat-style-female-user-profile-vector-illustration-isolated-background-women-profile-sign-business-concept_157943-38866.jpg?semt=ais_hybrid")),
            ),
            SizedBox(
              height: 60,
            ),
            CustomInfo(text: "lona", iconData: Icons.person_rounded),
            SizedBox(
              height: 40,
            ),
            CustomInfo(text: "Flutter Developer", iconData: Icons.work_rounded),
            SizedBox(
              height: 40,
            ),
            CustomInfo(text: "012345678912", iconData: Icons.phone_rounded),
            SizedBox(
              height: 40,
            ),
            CustomInfo(text: "lona@example.com", iconData: Icons.email_rounded),
            SizedBox(
              height: 40,
            ),
          ]),
        ),
      ),
    );
  }
}
