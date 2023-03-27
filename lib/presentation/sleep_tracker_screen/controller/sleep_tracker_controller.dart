import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/presentation/sleep_tracker_screen/models/sleep_tracker_model.dart';

class SleepTrackerController extends GetxController {
  Rx<SleepTrackerModel> sleepTrackerModelObj = SleepTrackerModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
