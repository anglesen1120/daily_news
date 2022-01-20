import 'package:daily_news/modules/person/controller/person_controller.dart';
import 'package:get/get.dart';

class PersonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PersonController());
  }
}
