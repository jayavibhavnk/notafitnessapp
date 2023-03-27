import '../controller/onboarding_four_controller.dart';
import 'package:get/get.dart';

class OnboardingFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingFourController());
  }
}
