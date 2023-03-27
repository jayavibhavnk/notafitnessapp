import 'controller/congratulations_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/widgets/custom_button.dart';

class CongratulationsPageScreen
    extends GetWidget<CongratulationsPageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 30,
            top: 65,
            right: 30,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgGroupBlue20001327x255,
                height: getVerticalSize(
                  327,
                ),
                width: getHorizontalSize(
                  255,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  277,
                ),
                margin: getMargin(
                  left: 18,
                  top: 35,
                  right: 18,
                ),
                child: Text(
                  "msg_congratulations2".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtPoppinsBold20,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  312,
                ),
                margin: getMargin(
                  top: 17,
                ),
                child: Text(
                  "msg_exercises_is_king".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtPoppinsRegular12,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 2,
                  bottom: 5,
                ),
                child: Text(
                  "lbl_jack_lalanne".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsRegular12,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomButton(
          text: "lbl_back_to_home".tr,
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
