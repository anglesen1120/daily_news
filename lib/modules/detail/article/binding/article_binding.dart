import 'package:daily_news/modules/detail/article/controller/article_controller.dart';
import 'package:get/get.dart';

class ArticleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ArticleController());
  }
}
