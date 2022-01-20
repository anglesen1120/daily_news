part of 'home_page.dart';

extension HomePageChildren on HomePage {
  Widget buildHeader() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 360.0,
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(32.0),
              bottomRight: Radius.circular(32.0),
            ),
          ),
        ),
        Positioned(
          top: 0.0,
          left: 32.0,
          bottom: 48.0,
          right: 40.0,
          child: SafeArea(
            top: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 56.0,
                ),
                const CategoryCard(
                  nameCategory: 'News of the day',
                  width: 160.0,
                  height: 42.0,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                  child: Text(
                    "'V.I.P Immunization' for the Powerful and Their Cronies Rattles South American",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 23.0,
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Learn more',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildContent() {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.only(
            left: 32.0,
            right: 24.0,
            top: 24.0,
          ),
          title: const Text(
            'Top Headlines',
            style: TextStyle(
                color: Colors.black,
                fontSize: 23.0,
                fontWeight: FontWeight.bold),
          ),
          subtitle: Obx(
            () => Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                '(${controller.totalArticle} articles)',
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0,
                ),
              ),
            ),
          ),
          trailing: const Text(
            'Read More',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.0,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Obx(
            () => Row(
              children: List.generate(
                controller.topHeadLineList.length,
                (index) => ItemTopHeadline(
                  article: controller.topHeadLineList[index],
                  itemCallback: () {
                    controller.onItemArticleClicked(
                        controller.topHeadLineList[index]);
                  },
                  sourceCallback: () {
                    controller.onItemNameSourceClicked(
                        controller.topHeadLineList[index].source!);
                  },
                ),
              ),
            ),
          ),
        ),
        const CategoryWidget(),
      ],
    );
  }
}
