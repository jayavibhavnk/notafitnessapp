import 'controller/onboarding_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/widgets/custom_floating_button.dart';

class OnboardingTwoScreen extends GetWidget<OnboardingTwoController> {
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
                imagePath: ImageConstant.imgGroupBlueGray900,
                height: getVerticalSize(
                  406,
                ),
                width: getHorizontalSize(
                  375,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 30,
                  top: 63,
                ),
                child: Text(
                  "lbl_get_burn".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsBold24,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  297,
                ),
                margin: getMargin(
                  left: 30,
                  top: 15,
                  right: 47,
                ),
                child: Text(
                  "msg_let_s_keep_burning".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsRegular14,
                ),
              ),
              Spacer(),
              Align(
                alignment: Alignment.centerRight,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: getMargin(
                    right: 30,
                    bottom: 40,
                  ),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: ColorConstant.gray50,
                      width: getHorizontalSize(
                        1,
                      ),
                    ),
                    borderRadius: BorderRadiusStyle.circleBorder30,
                  ),
                  child: Container(
                    height: getSize(
                      60,
                    ),
                    width: getSize(
                      60,
                    ),
                    decoration: AppDecoration.outlineGray50.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder30,
                    ),
                    child: Stack(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse3,
                          height: getVerticalSize(
                            60,
                          ),
                          width: getHorizontalSize(
                            30,
                          ),
                          alignment: Alignment.centerRight,
                        ),
                      ],
                    ),
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
