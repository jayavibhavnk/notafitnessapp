import '../controller/workout_details_one_controller.dart';
import 'package:get/get.dart';

class WorkoutDetailsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WorkoutDetailsOneController());
  }
}
