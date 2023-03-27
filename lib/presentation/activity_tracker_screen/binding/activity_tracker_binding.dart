import '../controller/activity_tracker_controller.dart';
import 'package:get/get.dart';

class ActivityTrackerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ActivityTrackerController());
  }
}
