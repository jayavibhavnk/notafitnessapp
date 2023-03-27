import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/presentation/workout_schedule_screen/models/workout_schedule_model.dart';

class WorkoutScheduleController extends GetxController {
  Rx<WorkoutScheduleModel> workoutScheduleModelObj = WorkoutScheduleModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
