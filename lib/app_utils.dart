import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class AppUtils {
  static String formatDateTimePublished(String strDateTime) {
    DateTime dateTime = DateTime.parse(strDateTime);
    return DateFormat('dd/MM/yyyy').format(dateTime);
  }

  static launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      throw "Could not launch $url";
    }
  }
}
