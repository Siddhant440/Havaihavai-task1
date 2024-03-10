import 'package:intl/intl.dart';

class DateTimeUtils {
  static String getCurrentDate() {
    DateTime now = DateTime.now();
    return DateFormat('d MMM').format(now);
  }

  static String getCurrentTime() {
    DateTime now = DateTime.now();
    return DateFormat('HH:mm').format(now);
  }

  static String getCurrentDay() {
    DateTime now = DateTime.now();
    return DateFormat('E').format(now);
  }
}
