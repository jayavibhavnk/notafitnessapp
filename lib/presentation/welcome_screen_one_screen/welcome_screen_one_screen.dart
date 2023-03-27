import 'controller/welcome_screen_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/widgets/custom_button.dart';

class WelcomeScreenOneScreen extends GetWidget<WelcomeScreenOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: getPadding(
                  top: 99,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_fitnes".tr,
                        style: TextStyle(
                          color: ColorConstant.gray900,
                          fontSize: getFontSize(
                            36,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: "lbl_s".tr,
                        style: TextStyle(
                          color: ColorConstant.gray900,
                          fontSize: getFontSize(
                            36,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: "lbl_x".tr,
                        style: TextStyle(
                          color: ColorConstant.purple200,
                          fontSize: getFontSize(
                            50,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 7,
                ),
                child: Text(
                  "msg_everybody_can_train".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsRegular18,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomButton(
          text: "lbl_get_started".tr,
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
