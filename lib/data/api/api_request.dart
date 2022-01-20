import 'package:daily_news/data/api/api_constants.dart';
import 'package:daily_news/data/api/response/article_response.dart';
import 'package:daily_news/data/api/response/source_response.dart';
import 'package:dio/dio.dart';

class ApiRequest {
  String requestTopHeadlines = '${ApiConstants.baseUrl}/v2/top-headlines';
  String requestEverything = '${ApiConstants.baseUrl}/v2/everything';
  String requestSources = '${ApiConstants.baseUrl}/v2/top-headlines/sources';
  var dio = Dio();

  ApiRequest();

  Future<ArticleResponse> requestAllTopHeadline() async {
    var params = {'country': 'us', 'apiKey': ApiConstants.apiKey};
    try {
      Response response =
          await dio.get(requestTopHeadlines, queryParameters: params);
      return ArticleResponse.fromJson(response.data);
    } catch (error) {
      return ArticleResponse.withError(error.toString());
    }
  }

  Future<ArticleResponse> requestFavoriteArticles(String category) async {
    var params = {
      'country': 'us',
      'category': category,
      'apiKey': ApiConstants.apiKey
    };
    try {
      Response response =
          await dio.get(requestTopHeadlines, queryParameters: params);
      return ArticleResponse.fromJson(response.data);
    } catch (error) {
      return ArticleResponse.withError(error.toString());
    }
  }

  Future<SourceResponse> requestAllArticleFromSource() async {
    var params = {'apikey': ApiConstants.apiKey};
    try {
      Response response =
          await dio.get(requestSources, queryParameters: params);
      return SourceResponse.fromJson(response.data);
    } catch (error) {
      return SourceResponse.withError(error.toString());
    }
  }

  Future<ArticleResponse> requestAllTopic(String topic) async {
    var params = {'q': topic, 'apiKey': ApiConstants.apiKey};
    try {
      Response response =
          await dio.get(requestEverything, queryParameters: params);
      return ArticleResponse.fromJson(response.data);
    } catch (error) {
      return ArticleResponse.withError(error.toString());
    }
  }

  Future<ArticleResponse> requestAllArticlesFromSource(String name) async {
    var params = {
      'sources': name,
      'apiKey': ApiConstants.apiKey
    };
    try {
      Response response =
          await dio.get(requestTopHeadlines, queryParameters: params);
      return ArticleResponse.fromJson(response.data);
    } catch (error) {
      return ArticleResponse.withError(error.toString());
    }
  }
}
