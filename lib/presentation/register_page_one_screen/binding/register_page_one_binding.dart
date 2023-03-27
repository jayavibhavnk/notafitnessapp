import '../controller/register_page_one_controller.dart';
import 'package:get/get.dart';

class RegisterPageOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterPageOneController());
  }
}
