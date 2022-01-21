import 'package:daily_news/models/source.dart';

class Article {
  Source? source;
  String author = '';
  String title = '';
  String description = '';
  String linkUrl = '';
  String urlImage = '';
  String publishedAt = '';
  String content = '';

  Article.fromJson(Map<String, dynamic> json) {
    source = Source.fromJson(json['source']);
    author = json['author'] ?? 'Unknown';
    title = json['title'] ?? 'Unknown';
    description = json['description'] ?? 'No Description for article.';
    linkUrl = json['url'] ?? 'https://www.google.com';
    urlImage = json['urlToImage']  ?? 'https://i.ytimg.com/vi/ArW4-mkGHSw/maxresdefault.jpg';
    publishedAt = json['publishedAt'] ?? DateTime.now();
    content = json['content'] ?? 'Wish you always show off, be merry and happy.';
  }
}