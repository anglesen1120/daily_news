import 'package:daily_news/modules/home/controller/home_controller.dart';
import 'package:daily_news/shared/items/item_source.dart';
import 'package:daily_news/shared/items/item_top_headline.dart';
import 'package:daily_news/shared/widgets/title_card.dart';
import 'package:daily_news/shared/widgets/category_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'home_page_children.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildHeader(),
            buildContent(),
          ],
        ),
      ),
    );
  }
}
