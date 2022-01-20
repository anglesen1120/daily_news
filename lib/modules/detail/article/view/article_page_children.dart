part of 'article_page.dart';

extension ArticlePageChildren on ArticlePage {
  Widget buildHeaderArticle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          child: CategoryCard(
              nameCategory: controller.detailArticle.source!.name,
              width: 80.0,
              height: 32.0),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 24.0, right: 24.0, bottom: 8.0, top: 8.0),
          child: Text(
            controller.detailArticle.title,
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 24.0, right: 24.0, bottom: 24.0, top: 4.0),
          child: Text(
            controller.detailArticle.description,
            style: const TextStyle(color: Colors.white, fontSize: 14.0),
          ),
        ),
      ],
    );
  }

  Widget buildContentArticle() {
    return Container(
      width: double.infinity,
      height: 420.0,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 24.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.account_circle,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      controller.detailArticle.author,
                      style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      controller.detailArticle.publishedAt,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 16.0),
            child: Text(
              controller.detailArticle.content,
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
