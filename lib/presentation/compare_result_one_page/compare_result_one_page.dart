import 'controller/compare_result_one_controller.dart';
import 'models/compare_result_one_model.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class CompareResultOnePage extends StatelessWidget {
  CompareResultOneController controller =
      Get.put(CompareResultOneController(CompareResultOneModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 30,
                    top: 32,
                    right: 30,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "msg_average_progress".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsSemiBold16,
                          ),
                          Padding(
                            padding: getPadding(
                              bottom: 5,
                            ),
                            child: Text(
                              "lbl_good".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium12Green500,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: double.maxFinite,
                        child: Container(
                          width: getHorizontalSize(
                            315,
                          ),
                          margin: getMargin(
                            top: 12,
                          ),
                          decoration: AppDecoration.fillGray50.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: getHorizontalSize(
                                  210,
                                ),
                                padding: getPadding(
                                  left: 30,
                                  top: 1,
                                  right: 92,
                                  bottom: 1,
                                ),
                                decoration: AppDecoration
                                    .txtGradientDeeppurpleA100IndigoA100
                                    .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.txtCustomBorderTL99,
                                ),
                                child: Text(
                                  "lbl_62".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium12WhiteA700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 30,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 2,
                              ),
                              child: Text(
                                "lbl_may".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsSemiBold16Gray600,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                bottom: 2,
                              ),
                              child: Text(
                                "lbl_june".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsSemiBold16Gray600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 13,
                        ),
                        child: Text(
                          "lbl_front_facing".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium14Gray600,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 13,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: CustomImageView(
                                imagePath: ImageConstant.imgRectangle5909,
                                height: getSize(
                                  150,
                                ),
                                width: getSize(
                                  150,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    20,
                                  ),
                                ),
                                margin: getMargin(
                                  right: 7,
                                ),
                              ),
                            ),
                            Expanded(
                              child: CustomImageView(
                                imagePath: ImageConstant.imgRectangle5910,
                                height: getSize(
                                  150,
                                ),
                                width: getSize(
                                  150,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    20,
                                  ),
                                ),
                                margin: getMargin(
                                  left: 7,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 16,
                        ),
                        child: Text(
                          "lbl_back_facing".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium14Gray600,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 13,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: CustomImageView(
                                imagePath: ImageConstant.imgRectangle5911,
                                height: getSize(
                                  150,
                                ),
                                width: getSize(
                                  150,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    20,
                                  ),
                                ),
                                margin: getMargin(
                                  right: 7,
                                ),
                              ),
                            ),
                            Expanded(
                              child: CustomImageView(
                                imagePath: ImageConstant.imgRectangle5912,
                                height: getSize(
                                  150,
                                ),
                                width: getSize(
                                  150,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    20,
                                  ),
                                ),
                                margin: getMargin(
                                  left: 7,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 16,
                        ),
                        child: Text(
                          "lbl_left_facing".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium14Gray600,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 14,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: CustomImageView(
                                imagePath: ImageConstant.imgRectangle5913,
                                height: getSize(
                                  150,
                                ),
                                width: getSize(
                                  150,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    20,
                                  ),
                                ),
                                margin: getMargin(
                                  right: 7,
                                ),
                              ),
                            ),
                            Expanded(
                              child: CustomImageView(
                                imagePath: ImageConstant.imgRectangle5914,
                                height: getSize(
                                  150,
                                ),
                                width: getSize(
                                  150,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    20,
                                  ),
                                ),
                                margin: getMargin(
                                  left: 7,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 16,
                        ),
                        child: Text(
                          "lbl_right_facing".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium14Gray600,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 13,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: CustomImageView(
                                imagePath: ImageConstant.imgRectangle5915,
                                height: getSize(
                                  150,
                                ),
                                width: getSize(
                                  150,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    20,
                                  ),
                                ),
                                margin: getMargin(
                                  right: 7,
                                ),
                              ),
                            ),
                            Expanded(
                              child: CustomImageView(
                                imagePath: ImageConstant.imgRectangle5916,
                                height: getSize(
                                  150,
                                ),
                                width: getSize(
                                  150,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    20,
                                  ),
                                ),
                                margin: getMargin(
                                  left: 7,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomButton(
                        text: "lbl_back_to_home2".tr,
                        margin: getMargin(
                          top: 30,
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
    );
  }
}
