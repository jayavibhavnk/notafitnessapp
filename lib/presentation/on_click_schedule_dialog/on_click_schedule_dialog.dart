import 'controller/on_click_schedule_controller.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class OnClickScheduleDialog extends StatelessWidget {
  OnClickScheduleDialog(this.controller);

  OnClickScheduleController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: getHorizontalSize(315),
        padding: getPadding(all: 30),
        decoration: AppDecoration.fillWhiteA700
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                CustomImageView(
                    svgPath: ImageConstant.imgClose,
                    height: getSize(16),
                    width: getSize(16),
                    margin: getMargin(top: 3, bottom: 4),
                    onTap: () {
                      onTapImgClose();
                    }),
                Text("msg_workout_schedule".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsSemiBold16),
                CustomImageView(
                    svgPath: ImageConstant.imgOverflowmenuGray900,
                    height: getSize(16),
                    width: getSize(16),
                    margin: getMargin(top: 3, bottom: 4))
              ]),
              Padding(
                  padding: getPadding(top: 30),
                  child: Text("msg_lowerbody_workout".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium14)),
              Padding(
                  padding: getPadding(top: 8),
                  child: Row(children: [
                    CustomImageView(
                        svgPath: ImageConstant.imgClockGray600,
                        height: getSize(20),
                        width: getSize(20)),
                    Padding(
                        padding: getPadding(left: 10, top: 1),
                        child: Text("lbl_today_03_00pm2".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsRegular12))
                  ])),
              CustomButton(
                  text: "lbl_mark_as_done".tr,
                  margin: getMargin(top: 30),
                  variant: ButtonVariant.GradientIndigoA100Blue200,
                  shape: ButtonShape.CircleBorder24,
                  padding: ButtonPadding.PaddingAll15,
                  fontStyle: ButtonFontStyle.PoppinsSemiBold12)
            ]));
  }

  onTapImgClose() {
    Get.back();
  }
}
