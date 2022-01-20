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
    author = json['author'] ?? 'Nguyen Hoang Phuc';
    title = json['title'] ?? 'Em gai a';
    description = json['description'] ?? 'Co biet tau la ai ko ?';
    linkUrl = json['url'] ?? 'https://www.google.com';
    urlImage = json['urlToImage']  ?? 'https://i.ytimg.com/vi/ArW4-mkGHSw/maxresdefault.jpg';
    publishedAt = json['publishedAt'] ?? '19/1/2022';
    content = json['content'] ?? 'My name is Phuc, i am studying at high school';
  }
}