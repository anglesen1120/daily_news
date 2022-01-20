class Source {
  String? id = '';
  String name = '';
  String description = '';
  String url = '';
  String category = '';
  String language = '';
  String country = '';

  Source.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? 'Id';
    name = json['name'] ?? 'Name';
    description = json['description'] ?? 'Description';
    url = json['url'] ?? 'Url';
    category = json['category'] ?? 'Category';
    language = json['language'] ?? 'Language';
    country = json['country'] ?? 'Country';
  }
}
