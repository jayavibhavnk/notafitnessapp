import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/presentation/activity_tracker_screen/models/activity_tracker_model.dart';

class ActivityTrackerController extends GetxController {
  Rx<ActivityTrackerModel> activityTrackerModelObj = ActivityTrackerModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    activityTrackerModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    activityTrackerModelObj.value.dropdownItemList.refresh();
  }
}
