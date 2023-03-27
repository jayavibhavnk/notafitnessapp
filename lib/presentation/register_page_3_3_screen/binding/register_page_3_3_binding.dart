import '../controller/register_page_3_3_controller.dart';
import 'package:get/get.dart';

class RegisterPage33Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterPage33Controller());
  }
}
