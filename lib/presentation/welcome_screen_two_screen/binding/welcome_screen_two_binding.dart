import '../controller/welcome_screen_two_controller.dart';
import 'package:get/get.dart';

class WelcomeScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WelcomeScreenTwoController());
  }
}
