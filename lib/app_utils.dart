import 'package:intl/intl.dart';

class AppUtils {
  static String formatDateTimePublished(String dateTime) {
    return dateTime.split("T")[0];
  }
}
