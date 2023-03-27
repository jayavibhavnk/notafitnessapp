import 'package:get/get.dart';
import 'sleep_schedule_item_model.dart';

class SleepScheduleModel {
  RxList<SleepScheduleItemModel> sleepScheduleItemList =
      RxList.generate(2, (index) => SleepScheduleItemModel());
}
