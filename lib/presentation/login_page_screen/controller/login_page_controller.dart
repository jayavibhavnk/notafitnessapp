import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/presentation/login_page_screen/models/login_page_model.dart';
import 'package:flutter/material.dart';

class LoginPageController extends GetxController {
  TextEditingController labelController = TextEditingController();

  TextEditingController labelOneController = TextEditingController();

  Rx<LoginPageModel> loginPageModelObj = LoginPageModel().obs;

  Rx<bool> isShowPassword = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    labelController.dispose();
    labelOneController.dispose();
  }
}
