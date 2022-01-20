import 'package:daily_news/models/source.dart';

class SourceResponse {
  String status = '';
  List<Source> sources = [];
  String error = '';

  SourceResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    sources = (json['sources'] as List).map((item) => Source.fromJson(item)).toList();
    error = '';
  }

  SourceResponse.withError(String value) {
    sources = [];
    error = value;
  }
}
