import 'package:flutter/material.dart';

class Time {
  static String formatTimeOfDay(TimeOfDay time) {
    final hours = time.hourOfPeriod == 0 ? 12 : time.hourOfPeriod;
    final period = time.period == DayPeriod.am ? "AM" : "PM";
    final minutes = time.minute.toString().padLeft(2, '0');
    return "$hours:$minutes $period";
  }
}
