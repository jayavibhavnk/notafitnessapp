import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/presentation/welcome_screen_two_screen/models/welcome_screen_two_model.dart';

class WelcomeScreenTwoController extends GetxController {
  Rx<WelcomeScreenTwoModel> welcomeScreenTwoModelObj =
      WelcomeScreenTwoModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(AppRoutes.onboardingOneScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
