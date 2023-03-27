import '../controller/comparison_controller.dart';
import 'package:get/get.dart';

class ComparisonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ComparisonController());
  }
}
