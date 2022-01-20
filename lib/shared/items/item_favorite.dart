import 'package:daily_news/models/article.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

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
      child: Container(
        margin: const EdgeInsets.only(right: 16.0, left: 16.0, top: 16.0),
        width: 360.0,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                article.urlImage,
                width: 80.0,
                height: 80.0,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              width: 12.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  article.title
                      .toString()
                      .replaceRange(20, article.title.length, '...'),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  article.description
                      .replaceRange(20, article.description.length, "..."),
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: Colors.grey[800],
                    fontSize: 13.0,
                  ),
                ),
                RichText(
                  text: TextSpan(
                      text: 'Published at ',
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 13.0,
                      ),
                      children: [
                        TextSpan(
                          text: article.publishedAt.toString(),
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ]),
                ),
                RichText(
                  text: TextSpan(
                      text: 'Reported by ',
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 13.0,
                      ),
                      children: [
                        TextSpan(
                          text: article.source!.name.toString(),
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = sourceCallback,
                        )
                      ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
