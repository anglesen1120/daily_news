import 'package:daily_news/app_utils.dart';
import 'package:daily_news/models/article.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ItemTopHeadline extends StatelessWidget {
  const ItemTopHeadline({
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
      child: Container(
        width: 280.0,
        padding: const EdgeInsets.only(left: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: SizedBox(
                width: 250.0,
                height: 140.0,
                child: Image.network(
                  article.urlImage,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              article.title.toString(),
              style: const TextStyle(
                  overflow: TextOverflow.ellipsis,
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
              child: Text(
                AppUtils.formatDateTimePublished(article.publishedAt),
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 13.0,
                ),
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'By ',
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 15.0,
                ),
                children: [
                  TextSpan(
                    text: article.source!.name.toString(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = sourceCallback,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
