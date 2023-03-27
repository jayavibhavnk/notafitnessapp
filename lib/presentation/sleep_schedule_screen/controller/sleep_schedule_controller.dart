import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/presentation/sleep_schedule_screen/models/sleep_schedule_model.dart';

class SleepScheduleController extends GetxController {
  Rx<SleepScheduleModel> sleepScheduleModelObj = SleepScheduleModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
