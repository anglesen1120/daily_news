import 'package:daily_news/data/api/response/article_response.dart';
import 'package:daily_news/data/repository/news_repository.dart';
import 'package:daily_news/models/article.dart';
import 'package:daily_news/models/source.dart';
import 'package:daily_news/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  NewsRepository repository = NewsRepository();
  ArticleResponse articleResponse = ArticleResponse();
  var topHeadLineList = <Article>[].obs;
  var favoriteList = <Article>[].obs;
  var topicList = <Article>[].obs;
  var totalArticle = 0.obs;
  List<String> categories = [
    'business',
    'entertainment',
    'general',
    'health',
    'science',
    'sports',
    'technology'
  ];
  TabController? tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(vsync: this, length: categories.length);
  }

  HomeController() {
    getTopHeadlines();
    getFavoriteArticle('business');
    getTopicArticles('bitcoin');
  }

  getTopHeadlines() async {
    topHeadLineList.value = await repository.fetchAllTopHeadline();
    totalArticle.value = topHeadLineList.length;
  }

  getFavoriteArticle(String category) async {
    favoriteList.value = await repository.fetchFavoriteArticle(category);
  }

  getTopicArticles(String topic) async {
    topicList.value = await repository.fetchTopicArticle(topic);
  }

  onItemArticleClicked(Article article) {
    Get.toNamed(Routes.article, arguments: article);
  }

  onItemNameSourceClicked(Source source) {}
}
