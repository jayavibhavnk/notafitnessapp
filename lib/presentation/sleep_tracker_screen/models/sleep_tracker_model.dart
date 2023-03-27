import 'package:get/get.dart';
import 'sleep_tracker_item_model.dart';

class SleepTrackerModel {
  RxList<SleepTrackerItemModel> sleepTrackerItemList =
      RxList.generate(2, (index) => SleepTrackerItemModel());
}
