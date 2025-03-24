import 'package:flutter/material.dart';

class CategoriesList {
  String? image;
  String? text;
  Widget Function(BuildContext)? build;

  CategoriesList(this.image, this.text, this.build);
}
