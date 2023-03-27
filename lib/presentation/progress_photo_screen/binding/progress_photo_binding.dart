import '../controller/progress_photo_controller.dart';
import 'package:get/get.dart';

class ProgressPhotoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProgressPhotoController());
  }
}
