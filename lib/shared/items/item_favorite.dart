import 'package:daily_news/models/article.dart';
import 'package:flutter/material.dart';

import '../../app_utils.dart';

class ItemFavorite extends StatelessWidget {
  const ItemFavorite({
    Key? key,
    required this.article,
    required this.itemCallback,
    required this.sourceCallback,
  }) : super(key: key);

  final Article article;
  final VoidCallback itemCallback;
  final VoidCallback sourceCallback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: itemCallback,
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0, left: 16.0, top: 16.0),
        child: SizedBox(
          width: 360.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  article.urlImage,
                  width: double.infinity,
                  height: 150.0,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Text(
                article.title.toString(),
                maxLines: 3,
                style: const TextStyle(
                  overflow: TextOverflow.ellipsis,
                  color: Colors.black,
                  fontSize: 23.0,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Text(
                AppUtils.formatDateTimePublished(article.publishedAt),
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
