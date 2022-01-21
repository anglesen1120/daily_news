part of 'home_page.dart';

extension HomePageChildren on HomePage {
  Widget buildHeader() {
    return Obx(
      () => Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(24.0),
                bottomRight: Radius.circular(24.0)),
            child: Container(
              width: double.infinity,
              height: 360.0,
              foregroundDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color:
                    Color.fromARGB(Color.getAlphaFromOpacity(0.5), 15, 23, 42),
              ),
              child: controller.topicList.isNotEmpty
                  ? Image.network(
                      controller.topicList[0].urlImage,
                      fit: BoxFit.fill,
                    )
                  : const SizedBox(),
            ),
          ),
          Positioned(
            left: 32.0,
            child: SafeArea(
              top: true,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 85.0,
                  ),
                  TitleCard(
                    nameCategory: 'News of the day',
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 32.0,
            bottom: 32.0,
            right: 40.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                controller.topicList.isNotEmpty
                    ? Padding(
                        padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                        child: Text(
                          controller.topicList[0].title,
                          maxLines: 2,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 23.0,
                          ),
                        ),
                      )
                    : const SizedBox(),
                GestureDetector(
                  onTap: () {
                    controller.onItemArticleClicked(controller.topicList[0]);
                  },
                  child: Row(
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildContent() {
    return Column(
      children: [
        const ListTile(
          contentPadding: EdgeInsets.only(
            left: 32.0,
            right: 24.0,
            top: 24.0,
          ),
          title: Text(
            'Official Partners',
            style: TextStyle(
                color: Colors.black,
                fontSize: 23.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        Obx(
          () => Container(
            margin: const EdgeInsets.only(
              left: 32.0,
            ),
            height: 50.0,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: controller.sourceList.length,
              itemBuilder: (context, index) {
                return ItemSource(
                  source: controller.sourceList[index],
                  callback: () {
                    AppUtils.launchUrl(controller.sourceList[index].url);
                  },
                );
              },
            ),
          ),
        ),
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
                        controller.topHeadLineList[index]);
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
