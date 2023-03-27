import '../controller/meal_schedule_controller.dart';
import 'package:get/get.dart';

class MealScheduleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MealScheduleController());
  }
}
