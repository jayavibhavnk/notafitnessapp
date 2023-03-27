import '../controller/workout_schedule_controller.dart';
import 'package:get/get.dart';

class WorkoutScheduleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WorkoutScheduleController());
  }
}
