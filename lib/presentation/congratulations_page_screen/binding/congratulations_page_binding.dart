import '../controller/congratulations_page_controller.dart';
import 'package:get/get.dart';

class CongratulationsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CongratulationsPageController());
  }
}
