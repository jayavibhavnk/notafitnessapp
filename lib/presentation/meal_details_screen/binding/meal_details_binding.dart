import '../controller/meal_details_controller.dart';
import 'package:get/get.dart';

class MealDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MealDetailsController());
  }
}
