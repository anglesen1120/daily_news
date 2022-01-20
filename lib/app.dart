import 'package:daily_news/routes/app_pages.dart';
import 'package:daily_news/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Daily News',
      getPages: routePages,
      initialRoute: Routes.container,
    );
  }
}
