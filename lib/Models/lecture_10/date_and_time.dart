import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Time {
  static String formatTimeOfDay(TimeOfDay time) {
    final hours = time.hourOfPeriod == 0 ? 12 : time.hourOfPeriod;
    final period = time.period == DayPeriod.am ? "AM" : "PM";
    final minutes = time.minute.toString().padLeft(2, '0');
    return "$hours:$minutes $period";
  }
}

class Date {
  static String formatDate(DateTime date) {
    return DateFormat('MMMM dd, yyyy').format(date);
  }
}