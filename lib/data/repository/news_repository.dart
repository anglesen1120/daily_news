import 'package:daily_news/data/api/api_request.dart';
import 'package:daily_news/data/api/response/article_response.dart';

class NewsRepository {
  ApiRequest request = ApiRequest();

  NewsRepository();

  Future<ArticleResponse> fetchAllTopHeadline() =>
      request.requestAllTopHeadline();

  Future<ArticleResponse> fetchFavoriteArticle(String category) =>
      request.requestFavoriteArticles(category);

  Future<ArticleResponse> fetchTopicArticle(String topic) =>
      request.requestAllTopic(topic);

  Future<ArticleResponse> fetchAllArticleFromSource(String name) =>
      request.requestAllArticlesFromSource(name);
}
