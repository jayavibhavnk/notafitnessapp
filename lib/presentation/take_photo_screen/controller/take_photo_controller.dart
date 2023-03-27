import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/presentation/take_photo_screen/models/take_photo_model.dart';

class TakePhotoController extends GetxController {
  Rx<TakePhotoModel> takePhotoModelObj = TakePhotoModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
