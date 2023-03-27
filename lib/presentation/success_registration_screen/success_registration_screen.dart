import 'controller/success_registration_controller.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/widgets/custom_button.dart';

class SuccessRegistrationScreen
    extends GetWidget<SuccessRegistrationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 48,
            top: 102,
            right: 48,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgGroupBlue20001,
                height: getVerticalSize(
                  304,
                ),
                width: getHorizontalSize(
                  277,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 44,
                ),
                child: Text(
                  "msg_welcome_stefani".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsBold20,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  210,
                ),
                margin: getMargin(
                  left: 33,
                  top: 5,
                  right: 34,
                  bottom: 5,
                ),
                child: Text(
                  "msg_you_are_all_set".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtPoppinsRegular12,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomButton(
          text: "lbl_go_to_home".tr,
          margin: getMargin(
            left: 30,
            right: 30,
            bottom: 40,
          ),
        ),
      ),
    );
  }
}
