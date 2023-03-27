import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/presentation/progress_photo_screen/models/progress_photo_model.dart';
import 'package:jvgod1/widgets/custom_bottom_bar.dart';

class ProgressPhotoController extends GetxController {
  Rx<ProgressPhotoModel> progressPhotoModelObj = ProgressPhotoModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
