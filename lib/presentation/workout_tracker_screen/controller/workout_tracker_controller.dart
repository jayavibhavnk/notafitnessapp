import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/presentation/workout_tracker_screen/models/workout_tracker_model.dart';

class WorkoutTrackerController extends GetxController {
  Rx<WorkoutTrackerModel> workoutTrackerModelObj = WorkoutTrackerModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
