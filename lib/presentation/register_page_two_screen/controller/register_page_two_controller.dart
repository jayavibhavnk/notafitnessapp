import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/presentation/register_page_two_screen/models/register_page_two_model.dart';
import 'package:flutter/material.dart';

class RegisterPageTwoController extends GetxController {
  TextEditingController groupFortyEightController = TextEditingController();

  TextEditingController groupFortyNineController = TextEditingController();

  Rx<RegisterPageTwoModel> registerPageTwoModelObj = RegisterPageTwoModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupFortyEightController.dispose();
    groupFortyNineController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    registerPageTwoModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    registerPageTwoModelObj.value.dropdownItemList.refresh();
  }
}
