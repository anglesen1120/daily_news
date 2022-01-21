import 'package:daily_news/modules/detail/source/controller/source_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'source_page_children.dart';

class SourcePage extends GetView<SourceController> {
  const SourcePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: buildHeader(),
      ),
      body: Column(
        children: [
          buildContent(),
        ],
      ),
    );
  }
}
