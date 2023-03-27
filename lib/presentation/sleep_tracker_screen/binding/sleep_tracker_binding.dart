import '../controller/sleep_tracker_controller.dart';
import 'package:get/get.dart';

class SleepTrackerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SleepTrackerController());
  }
}
