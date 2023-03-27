import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/presentation/profile_screen/models/profile_model.dart';
import 'package:jvgod1/widgets/custom_bottom_bar.dart';

class ProfileController extends GetxController {
  Rx<ProfileModel> profileModelObj = ProfileModel().obs;

  RxBool isSelectedSwitch = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
