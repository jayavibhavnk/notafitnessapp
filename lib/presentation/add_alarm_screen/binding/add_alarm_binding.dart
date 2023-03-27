import '../controller/add_alarm_controller.dart';
import 'package:get/get.dart';

class AddAlarmBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddAlarmController());
  }
}
