import 'package:daily_news/data/api/response/article_response.dart';
import 'package:daily_news/data/repository/news_repository.dart';
import 'package:daily_news/models/article.dart';
import 'package:daily_news/models/source.dart';
import 'package:daily_news/routes/app_routes.dart';
import 'package:get/get.dart';

class ArticleController extends GetxController {
  NewsRepository repository = NewsRepository();
  ArticleResponse articleResponse = ArticleResponse();
  var articleList = <Article>[].obs;
  Article detailArticle = Get.arguments;

  ArticleController() {
    getAllArticleFromSource();
  }

  getAllArticleFromSource() async {
    articleResponse = await repository
        .fetchAllArticleFromSource(detailArticle.source!.id.toString());
    articleList.value = articleResponse.articles;
  }

  onItemArticleClicked(Article article) {
    Get.toNamed(Routes.article, arguments: article);
  }

  onItemNameSourceClicked(Source source) {
    Get.toNamed(Routes.source, arguments: source);
  }

  onBack() {
    Get.back();
  }
}
