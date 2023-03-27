import '../controller/meal_planner_controller.dart';
import 'package:get/get.dart';

class MealPlannerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MealPlannerController());
  }
}
