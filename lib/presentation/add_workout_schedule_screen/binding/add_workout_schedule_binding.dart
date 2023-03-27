import '../controller/add_workout_schedule_controller.dart';
import 'package:get/get.dart';

class AddWorkoutScheduleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddWorkoutScheduleController());
  }
}
