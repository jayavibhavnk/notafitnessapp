import '../controller/sleep_schedule_controller.dart';
import 'package:get/get.dart';

class SleepScheduleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SleepScheduleController());
  }
}
