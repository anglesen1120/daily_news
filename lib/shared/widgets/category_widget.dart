import 'package:daily_news/modules/home/controller/home_controller.dart';
import 'package:daily_news/shared/items/item_favorite.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return DefaultTabController(
      length: controller.categories.length,
      child: Container(
        margin: const EdgeInsets.only(top: 24.0, bottom: 16.0),
        child: Column(
          children: [
            TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              controller: controller.tabController,
              isScrollable: true,
              physics: const NeverScrollableScrollPhysics(),
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.black,
              indicatorWeight: 3.0,
              tabs: controller.categories.map((String nameCategory) {
                return Container(
                  padding: const EdgeInsets.only(bottom: 15.0, top: 10.0),
                  child: Text(
                    nameCategory.toUpperCase(),
                    style: const TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                );
              }).toList(),
              onTap: (index) {
                controller.getFavoriteArticle(controller.categories[index]);
              },
            ),
            Obx(
              () => SizedBox(
                height: 420.0,
                child: ListView.builder(
                  itemCount: controller.favoriteList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: ItemFavorite(
                        article: controller.favoriteList[index],
                        itemCallback: () {
                          controller.onItemArticleClicked(
                              controller.favoriteList[index]);
                        },
                        sourceCallback: () {
                          controller.onItemNameSourceClicked(
                              controller.favoriteList[index].source!);
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
