import 'package:intl/intl.dart';

class Date {
  static String formatDate(DateTime date) {
    return DateFormat('MMMM dd, yyyy').format(date);
  }
}
