import 'package:flutter/material.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class CustomSnackBar {
  static void show(
      BuildContext context, {
        required String text,
        required String message,
        // required Color color,
        required ContentType contentType,
      }) {
    final snackBar = SnackBar(
      content: AwesomeSnackbarContent(
        title: text,
        message: message,
        contentType: contentType,
        // color: color,
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
