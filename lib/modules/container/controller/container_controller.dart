import 'package:daily_news/modules/home/view/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ContainerController extends GetxController {
  List<Widget> pages = [
    const HomePage(),
  ];
  var pageController = PageController(initialPage: 0);
}