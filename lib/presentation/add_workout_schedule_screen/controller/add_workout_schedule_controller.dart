import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/presentation/add_workout_schedule_screen/models/add_workout_schedule_model.dart';

class AddWorkoutScheduleController extends GetxController {
  Rx<AddWorkoutScheduleModel> addWorkoutScheduleModelObj =
      AddWorkoutScheduleModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
