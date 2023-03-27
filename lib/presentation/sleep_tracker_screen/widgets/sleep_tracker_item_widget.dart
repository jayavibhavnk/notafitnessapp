import '../controller/sleep_tracker_controller.dart';
import '../models/sleep_tracker_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';

// ignore: must_be_immutable
class SleepTrackerItemWidget extends StatelessWidget {
  SleepTrackerItemWidget(this.sleepTrackerItemModelObj);

  SleepTrackerItemModel sleepTrackerItemModelObj;

  var controller = Get.find<SleepTrackerController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 15,
      ),
      decoration: AppDecoration.outlineGray90011.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder22,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgFolderDeepPurple50,
            height: getSize(
              30,
            ),
            width: getSize(
              30,
            ),
            margin: getMargin(
              top: 17,
              bottom: 16,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 15,
              top: 7,
              bottom: 6,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_bedtime".tr,
                        style: TextStyle(
                          color: ColorConstant.gray900,
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: "lbl_09_00pm".tr,
                        style: TextStyle(
                          color: ColorConstant.gray600,
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                Padding(
                  padding: getPadding(
                    top: 6,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_in".tr,
                          style: TextStyle(
                            color: ColorConstant.gray600,
                            fontSize: getFontSize(
                              14,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: "lbl_6".tr,
                          style: TextStyle(
                            color: ColorConstant.gray600,
                            fontSize: getFontSize(
                              16,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: "lbl_hours".tr,
                          style: TextStyle(
                            color: ColorConstant.gray600,
                            fontSize: getFontSize(
                              14,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: "lbl_22minutes".tr,
                          style: TextStyle(
                            color: ColorConstant.gray600,
                            fontSize: getFontSize(
                              16,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: getPadding(
              bottom: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgOverflowmenu,
                  height: getSize(
                    14,
                  ),
                  width: getSize(
                    14,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgWorkouttoggleactive,
                  height: getVerticalSize(
                    24,
                  ),
                  width: getHorizontalSize(
                    44,
                  ),
                  margin: getMargin(
                    top: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
