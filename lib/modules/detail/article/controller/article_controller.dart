import 'package:daily_news/data/repository/news_repository.dart';
import 'package:daily_news/models/article.dart';
import 'package:daily_news/models/source.dart';
import 'package:daily_news/routes/app_routes.dart';
import 'package:get/get.dart';

class ArticleController extends GetxController {
  NewsRepository repository = NewsRepository();
  var articleList = <Article>[].obs;
  Article detailArticle = Get.arguments;

  ArticleController() {
    getAllArticleFromSource();
  }

  getAllArticleFromSource() async {
    articleList.value = await repository
        .fetchAllArticleFromSource(detailArticle.source!.id.toString());
  }

  onItemArticleClicked(Article article) {
    Get.toNamed(Routes.article, arguments: article);
  }

  onItemNameSourceClicked(Source source) {}

  onBack() {
    Get.back();
  }
}
