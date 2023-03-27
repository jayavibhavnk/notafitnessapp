import '../controller/category_breakfast_controller.dart';
import 'package:get/get.dart';

class CategoryBreakfastBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoryBreakfastController());
  }
}
