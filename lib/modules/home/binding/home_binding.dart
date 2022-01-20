import 'package:daily_news/modules/home/controller/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
   Get.lazyPut(() => HomeController());
  }
}