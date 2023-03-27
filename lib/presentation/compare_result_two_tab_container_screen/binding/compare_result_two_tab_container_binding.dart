import '../controller/compare_result_two_tab_container_controller.dart';
import 'package:get/get.dart';

class CompareResultTwoTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CompareResultTwoTabContainerController());
  }
}
