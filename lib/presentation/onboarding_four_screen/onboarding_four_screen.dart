import 'controller/onboarding_four_controller.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/widgets/custom_floating_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class OnboardingFourScreen extends GetWidget<OnboardingFourController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroupBlueGray900422x375,
                height: getVerticalSize(
                  422,
                ),
                width: getHorizontalSize(
                  375,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  177,
                ),
                margin: getMargin(
                  left: 30,
                  top: 49,
                ),
                child: Text(
                  "msg_improve_sleep_quality".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsBold24,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  299,
                ),
                margin: getMargin(
                  left: 30,
                  top: 11,
                  right: 45,
                ),
                child: Text(
                  "msg_improve_the_quality".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsRegular14,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: getMargin(
                    top: 90,
                    right: 30,
                    bottom: 40,
                  ),
                  decoration: AppDecoration.outlineGray50.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder30,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      OutlineGradientButton(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            2,
                          ),
                          top: getVerticalSize(
                            2,
                          ),
                          right: getHorizontalSize(
                            2,
                          ),
                          bottom: getVerticalSize(
                            2,
                          ),
                        ),
                        strokeWidth: getHorizontalSize(
                          2,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment(
                            1,
                            1,
                          ),
                          end: Alignment(
                            -0.24,
                            -0.31,
                          ),
                          colors: [
                            ColorConstant.indigoA100,
                            ColorConstant.blue200,
                          ],
                        ),
                        corners: Corners(
                          topLeft: Radius.circular(
                            30,
                          ),
                          topRight: Radius.circular(
                            30,
                          ),
                          bottomLeft: Radius.circular(
                            30,
                          ),
                          bottomRight: Radius.circular(
                            30,
                          ),
                        ),
                        child: Container(
                          height: getSize(
                            60,
                          ),
                          width: getSize(
                            60,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                30,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: CustomFloatingButton(
          height: 50,
          width: 50,
          child: CustomImageView(
            svgPath: ImageConstant.imgArrowright,
            height: getVerticalSize(
              25.0,
            ),
            width: getHorizontalSize(
              25.0,
            ),
          ),
        ),
      ),
    );
  }
}
