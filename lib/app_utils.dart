import 'package:intl/intl.dart';

class AppUtils {
  static String formatDateTimePublished(String strDateTime) {
    DateTime dateTime = DateTime.parse(strDateTime);
    return DateFormat('dd/MM/yyyy').format(dateTime);
  }
}
