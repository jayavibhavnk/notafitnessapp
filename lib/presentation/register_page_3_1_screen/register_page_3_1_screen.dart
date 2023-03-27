import 'controller/register_page_3_1_controller.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/widgets/custom_button.dart';

class RegisterPage31Screen extends GetWidget<RegisterPage31Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 41,
            bottom: 41,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "msg_what_is_your_goal".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsBold20,
              ),
              Container(
                width: getHorizontalSize(
                  179,
                ),
                margin: getMargin(
                  top: 3,
                ),
                child: Text(
                  "msg_it_will_help_us2".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtPoppinsRegular12,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: getPadding(
                    top: 48,
                    bottom: 5,
                  ),
                  child: IntrinsicWidth(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: getMargin(
                            top: 90,
                            bottom: 30,
                          ),
                          padding: getPadding(
                            left: 20,
                            top: 22,
                            right: 20,
                            bottom: 22,
                          ),
                          decoration:
                              AppDecoration.outlineDeeppurpleA1004c.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder22,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgLayer1,
                                height: getVerticalSize(
                                  183,
                                ),
                                width: getHorizontalSize(
                                  128,
                                ),
                                alignment: Alignment.centerRight,
                                margin: getMargin(
                                  right: 12,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 33,
                                ),
                                child: Text(
                                  "lbl_lean_tone".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtPoppinsMedium12,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgBordertext,
                                height: getVerticalSize(
                                  1,
                                ),
                                width: getHorizontalSize(
                                  50,
                                ),
                                margin: getMargin(
                                  top: 5,
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  165,
                                ),
                                margin: getMargin(
                                  top: 20,
                                  bottom: 7,
                                ),
                                child: Text(
                                  "msg_i_m_skinny_fat".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtPoppinsRegular10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: getMargin(
                              left: 20,
                            ),
                            padding: getPadding(
                              left: 41,
                              top: 31,
                              right: 41,
                              bottom: 31,
                            ),
                            decoration:
                                AppDecoration.outlineDeeppurpleA1004c1.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder22,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgVectorGray50001,
                                  height: getVerticalSize(
                                    290,
                                  ),
                                  width: getHorizontalSize(
                                    183,
                                  ),
                                  margin: getMargin(
                                    top: 3,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 25,
                                  ),
                                  child: Text(
                                    "lbl_improve_shape".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold14,
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgBordertextGray50,
                                  height: getVerticalSize(
                                    1,
                                  ),
                                  width: getHorizontalSize(
                                    50,
                                  ),
                                  margin: getMargin(
                                    top: 1,
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    190,
                                  ),
                                  margin: getMargin(
                                    top: 20,
                                  ),
                                  child: Text(
                                    "msg_i_have_a_low_amount".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.center,
                                    style:
                                        AppStyle.txtPoppinsRegular12WhiteA700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 20,
                            top: 90,
                            bottom: 30,
                          ),
                          padding: getPadding(
                            left: 20,
                            top: 30,
                            right: 20,
                            bottom: 30,
                          ),
                          decoration:
                              AppDecoration.outlineDeeppurpleA1004c.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder22,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgVectorDeepOrange50,
                                height: getVerticalSize(
                                  169,
                                ),
                                width: getHorizontalSize(
                                  147,
                                ),
                                margin: getMargin(
                                  top: 17,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 22,
                                ),
                                child: Text(
                                  "lbl_lose_a_fat".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtPoppinsMedium12,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgBordertext,
                                height: getVerticalSize(
                                  1,
                                ),
                                width: getHorizontalSize(
                                  50,
                                ),
                                margin: getMargin(
                                  top: 5,
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  165,
                                ),
                                margin: getMargin(
                                  top: 20,
                                ),
                                child: Text(
                                  "msg_i_have_over_20_lbs".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtPoppinsRegular10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomButton(
          text: "lbl_confirm".tr,
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
