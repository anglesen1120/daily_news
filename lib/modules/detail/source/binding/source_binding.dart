import 'package:daily_news/modules/detail/source/controller/source_controller.dart';
import 'package:get/get.dart';

class SourceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SourceController());
  }
}
