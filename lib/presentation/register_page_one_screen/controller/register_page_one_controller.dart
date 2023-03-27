import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/presentation/register_page_one_screen/models/register_page_one_model.dart';
import 'package:flutter/material.dart';

class RegisterPageOneController extends GetxController {
  TextEditingController labelController = TextEditingController();

  TextEditingController labelOneController = TextEditingController();

  TextEditingController labelTwoController = TextEditingController();

  TextEditingController labelThreeController = TextEditingController();

  Rx<RegisterPageOneModel> registerPageOneModelObj = RegisterPageOneModel().obs;

  Rx<bool> isShowPassword = false.obs;

  RxBool checkbox = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    labelController.dispose();
    labelOneController.dispose();
    labelTwoController.dispose();
    labelThreeController.dispose();
  }
}
