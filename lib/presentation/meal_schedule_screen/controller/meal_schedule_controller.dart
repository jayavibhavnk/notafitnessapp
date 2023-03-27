import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/presentation/meal_schedule_screen/models/meal_schedule_model.dart';

class MealScheduleController extends GetxController {
  Rx<MealScheduleModel> mealScheduleModelObj = MealScheduleModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
