import 'controller/compare_result_two_controller.dart';
import 'models/compare_result_two_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class CompareResultTwoPage extends StatelessWidget {
  CompareResultTwoController controller =
      Get.put(CompareResultTwoController(CompareResultTwoModel().obs));

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
                    top: 30,
                    right: 30,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 5,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: getVerticalSize(
                                    139,
                                  ),
                                  width: getHorizontalSize(
                                    283,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.topRight,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          height: getVerticalSize(
                                            137,
                                          ),
                                          width: getHorizontalSize(
                                            283,
                                          ),
                                          padding: getPadding(
                                            top: 1,
                                            bottom: 1,
                                          ),
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: fs.Svg(
                                                ImageConstant.imgGroup51,
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgVector99,
                                                height: getVerticalSize(
                                                  66,
                                                ),
                                                width: getHorizontalSize(
                                                  281,
                                                ),
                                                alignment:
                                                    Alignment.bottomCenter,
                                                margin: getMargin(
                                                  bottom: 18,
                                                ),
                                              ),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgVector100,
                                                height: getVerticalSize(
                                                  100,
                                                ),
                                                width: getHorizontalSize(
                                                  283,
                                                ),
                                                alignment: Alignment.topCenter,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                          margin: getMargin(
                                            right: 38,
                                          ),
                                          padding: getPadding(
                                            left: 25,
                                            top: 6,
                                            right: 25,
                                            bottom: 6,
                                          ),
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                ImageConstant.imgGroup4,
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: getMargin(
                                                  bottom: 59,
                                                ),
                                                padding: getPadding(
                                                  left: 10,
                                                  top: 9,
                                                  right: 10,
                                                  bottom: 9,
                                                ),
                                                decoration: AppDecoration
                                                    .outlineGray90011
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Text(
                                                      "lbl_62_increase".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular10Green500,
                                                    ),
                                                    CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowup,
                                                      height: getSize(
                                                        12,
                                                      ),
                                                      width: getSize(
                                                        12,
                                                      ),
                                                      margin: getMargin(
                                                        top: 2,
                                                        bottom: 1,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 4,
                                    top: 8,
                                    right: 2,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "lbl_jan".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular12,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 21,
                                        ),
                                        child: Text(
                                          "lbl_feb".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsRegular12,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 20,
                                        ),
                                        child: Text(
                                          "lbl_mar".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsRegular12,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 20,
                                          top: 1,
                                        ),
                                        child: Text(
                                          "lbl_apr".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsRegular12,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 20,
                                          top: 1,
                                        ),
                                        child: Text(
                                          "lbl_may".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsBold12DeeppurpleA100,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 20,
                                        ),
                                        child: Text(
                                          "lbl_jun".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsRegular12,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 22,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          "lbl_jul".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsRegular12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              bottom: 19,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "lbl_100".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular1062,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 1,
                                    top: 12,
                                  ),
                                  child: Text(
                                    "lbl_80".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular1062,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 10,
                                  ),
                                  child: Text(
                                    "lbl_60".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtPoppinsBold1062DeeppurpleA100,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 1,
                                    top: 12,
                                  ),
                                  child: Text(
                                    "lbl_40".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular1062,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 2,
                                    top: 10,
                                  ),
                                  child: Text(
                                    "lbl_202".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular1062,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 2,
                                    top: 12,
                                  ),
                                  child: Text(
                                    "lbl_0".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular1062,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: getPadding(
                          top: 29,
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
                          "lbl_lose_weight".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular14Gray900,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 7,
                          top: 8,
                          right: 7,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "lbl_33".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12,
                            ),
                            Expanded(
                              child: Padding(
                                padding: getPadding(
                                  left: 5,
                                  top: 4,
                                  bottom: 3,
                                ),
                                child: Container(
                                  height: getVerticalSize(
                                    10,
                                  ),
                                  width: getHorizontalSize(
                                    243,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.redA70075,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        5,
                                      ),
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        5,
                                      ),
                                    ),
                                    child: LinearProgressIndicator(
                                      value: 0.81,
                                      backgroundColor: ColorConstant.redA70075,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 5,
                              ),
                              child: Text(
                                "lbl_67".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 21,
                        ),
                        child: Text(
                          "lbl_height_increase".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular14Gray900,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 6,
                          top: 8,
                          right: 11,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "lbl_88".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12,
                            ),
                            Expanded(
                              child: Padding(
                                padding: getPadding(
                                  left: 5,
                                  top: 4,
                                  bottom: 3,
                                ),
                                child: Container(
                                  height: getVerticalSize(
                                    10,
                                  ),
                                  width: getHorizontalSize(
                                    243,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.redA70075,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        5,
                                      ),
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        5,
                                      ),
                                    ),
                                    child: LinearProgressIndicator(
                                      value: 0.13,
                                      backgroundColor: ColorConstant.redA70075,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 5,
                              ),
                              child: Text(
                                "lbl_122".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 19,
                        ),
                        child: Text(
                          "msg_muscle_mass_increase".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular14Gray900,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 8,
                          top: 10,
                          right: 6,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "lbl_57".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgGroup10179,
                              height: getVerticalSize(
                                10,
                              ),
                              width: getHorizontalSize(
                                243,
                              ),
                              margin: getMargin(
                                left: 4,
                                top: 4,
                                bottom: 3,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 6,
                              ),
                              child: Text(
                                "lbl_43".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 19,
                        ),
                        child: Text(
                          "lbl_abs".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular14Gray900,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 7,
                          top: 10,
                          right: 13,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "lbl_89".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12,
                            ),
                            Expanded(
                              child: Padding(
                                padding: getPadding(
                                  left: 3,
                                  top: 4,
                                  bottom: 3,
                                ),
                                child: Container(
                                  height: getVerticalSize(
                                    10,
                                  ),
                                  width: getHorizontalSize(
                                    244,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.redA70075,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        5,
                                      ),
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        5,
                                      ),
                                    ),
                                    child: LinearProgressIndicator(
                                      value: 0.16,
                                      backgroundColor: ColorConstant.redA70075,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 6,
                              ),
                              child: Text(
                                "lbl_11".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomButton(
                        text: "lbl_back_to_home2".tr,
                        margin: getMargin(
                          top: 23,
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
