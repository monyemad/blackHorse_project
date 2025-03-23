import 'package:flutter/material.dart';

AppBar customAppBar() {
  return AppBar(
    centerTitle: true,
    title: const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "News",
          style: TextStyle(
              color: Colors.blueGrey, fontWeight: FontWeight.bold),
        ),
        Text(
          "Cloud",
          style: TextStyle(
              color: Colors.deepOrange, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}