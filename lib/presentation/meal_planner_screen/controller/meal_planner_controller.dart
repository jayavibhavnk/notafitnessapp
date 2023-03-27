import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/presentation/meal_planner_screen/models/meal_planner_model.dart';

class MealPlannerController extends GetxController {
  Rx<MealPlannerModel> mealPlannerModelObj = MealPlannerModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

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
    mealPlannerModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    mealPlannerModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    selectedDropDownValue1 = value as SelectionPopupModel;
    mealPlannerModelObj.value.dropdownItemList1.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    mealPlannerModelObj.value.dropdownItemList1.refresh();
  }
}
