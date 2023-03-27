import '../controller/success_registration_controller.dart';
import 'package:get/get.dart';

class SuccessRegistrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SuccessRegistrationController());
  }
}
