import '../controller/workout_tracker_controller.dart';
import 'package:get/get.dart';

class WorkoutTrackerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WorkoutTrackerController());
  }
}
