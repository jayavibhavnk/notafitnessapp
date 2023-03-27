import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/presentation/compare_result_two_tab_container_screen/models/compare_result_two_tab_container_model.dart';
import 'package:flutter/material.dart';

class CompareResultTwoTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<CompareResultTwoTabContainerModel> compareResultTwoTabContainerModelObj =
      CompareResultTwoTabContainerModel().obs;

  late TabController switchingController =
      Get.put(TabController(vsync: this, length: 2));

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
