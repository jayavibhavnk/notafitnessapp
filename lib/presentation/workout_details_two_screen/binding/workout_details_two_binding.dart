import '../controller/workout_details_two_controller.dart';
import 'package:get/get.dart';

class WorkoutDetailsTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WorkoutDetailsTwoController());
  }
}
