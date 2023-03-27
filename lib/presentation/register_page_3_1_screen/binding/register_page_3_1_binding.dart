import '../controller/register_page_3_1_controller.dart';
import 'package:get/get.dart';

class RegisterPage31Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterPage31Controller());
  }
}
