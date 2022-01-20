import 'package:daily_news/models/article.dart';
import 'package:get/get.dart';

class ArticleController extends GetxController {

  Article detailArticle = Get.arguments;

  onBack() {
    Get.back();
  }
}