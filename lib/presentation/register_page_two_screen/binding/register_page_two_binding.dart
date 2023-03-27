import '../controller/register_page_two_controller.dart';
import 'package:get/get.dart';

class RegisterPageTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterPageTwoController());
  }
}
