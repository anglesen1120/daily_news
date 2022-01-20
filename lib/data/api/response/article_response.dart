import 'package:daily_news/models/article.dart';

class ArticleResponse {
  String status = '';
  int total = 0;
  List<Article> articles = [];
  String error = '';

  ArticleResponse();

  ArticleResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    total = json['totalResults'];
    articles = (json['articles'] as List)
        .map((item) => Article.fromJson(item))
        .toList();
    error = '';
  }

  ArticleResponse.withError(String value) {
    articles = [];
    error = value;
  }
}
