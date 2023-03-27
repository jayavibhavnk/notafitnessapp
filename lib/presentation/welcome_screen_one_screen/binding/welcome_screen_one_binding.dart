import '../controller/welcome_screen_one_controller.dart';
import 'package:get/get.dart';

class WelcomeScreenOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WelcomeScreenOneController());
  }
}
