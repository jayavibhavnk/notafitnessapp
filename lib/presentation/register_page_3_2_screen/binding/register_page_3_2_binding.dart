import '../controller/register_page_3_2_controller.dart';
import 'package:get/get.dart';

class RegisterPage32Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterPage32Controller());
  }
}
