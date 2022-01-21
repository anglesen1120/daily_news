import 'dart:developer';

import 'package:daily_news/app_utils.dart';
import 'package:daily_news/data/api/response/article_response.dart';
import 'package:daily_news/data/repository/api_repository.dart';
import 'package:daily_news/models/article.dart';
import 'package:daily_news/models/source.dart';
import 'package:daily_news/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  ApiRepository repository = ApiRepository();
  ArticleResponse articleResponse = ArticleResponse();
  var topHeadLineList = <Article>[].obs;
  var favoriteList = <Article>[].obs;
  var topicList = <Article>[].obs;
  var sourceList = <Source>[].obs;
  var totalArticle = 0.obs;
  List<String> categories = [
    'business',
    'entertainment',
    'general',
    'health',
    'science',
    'sports',
    'technology',
  ];
  TabController? tabController;

  @override
  void onInit() {
    super.onInit();
    log("Home Init");
    tabController = TabController(vsync: this, length: categories.length);
  }

  @override
  void onReady() {
    super.onReady();
    log('Home Ready');
    getTopHeadlines();
    getFavoriteArticle('business');
    getTopicArticles('bitcoin');
    getSources();
  }

  @override
  void onClose() {
    super.onClose();
    log("Home Close");
    tabController?.dispose();
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

  getSources() async {
    sourceList.value = await repository.fetchAllSources();
  }

  onItemArticleClicked(Article article) {
    Get.toNamed(Routes.article, arguments: article);
  }

  onItemNameSourceClicked(Article article) {
    AppUtils.launchUrl(article.linkUrl);
  }
}
