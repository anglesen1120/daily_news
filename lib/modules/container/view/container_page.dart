import 'package:daily_news/modules/container/controller/container_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContainerPage extends GetView<ContainerController> {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller.pageController,
        children: controller.pages,
      ),
      bottomNavigationBar:
          BottomNavigationBar(backgroundColor: Colors.white, items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(
            Icons.home,
            color: Colors.black,
          ),
          title: SizedBox(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_outlined),
          activeIcon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          title: SizedBox(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outlined),
          activeIcon: Icon(
            Icons.person,
            color: Colors.black,
          ),
          title: SizedBox(),
        ),
      ]),
    );
  }
}
