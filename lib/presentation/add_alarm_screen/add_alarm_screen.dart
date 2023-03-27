import 'controller/add_alarm_controller.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:jvgod1/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:jvgod1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:jvgod1/widgets/app_bar/custom_app_bar.dart';
import 'package:jvgod1/widgets/custom_button.dart';

class AddAlarmScreen extends GetWidget<AddAlarmController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 62,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleftGray900,
                    margin: getMargin(left: 30, top: 12, bottom: 12),
                    onTap: onTapArrowleft11),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl_add_alarm".tr),
                actions: [
                  AppbarIconbutton1(
                      svgPath: ImageConstant.imgDetailnavs,
                      margin:
                          getMargin(left: 30, top: 12, right: 30, bottom: 12))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 30, top: 18, right: 30, bottom: 18),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(all: 15),
                          decoration: AppDecoration.fillGray50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder17),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgLaptop,
                                    height: getSize(20),
                                    width: getSize(20)),
                                Padding(
                                    padding: getPadding(left: 10, bottom: 1),
                                    child: Text("lbl_bedtime2".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular12)),
                                Spacer(),
                                Padding(
                                    padding: getPadding(top: 2, bottom: 2),
                                    child: Text("lbl_09_00_pm2".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsRegular10Gray500)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowrightGray500,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(left: 5))
                              ])),
                      Container(
                          margin: getMargin(top: 10),
                          padding: getPadding(all: 15),
                          decoration: AppDecoration.fillGray50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder17),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgClockGray600,
                                    height: getSize(20),
                                    width: getSize(20)),
                                Padding(
                                    padding: getPadding(left: 10, top: 1),
                                    child: Text("lbl_hours_of_sleep".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular12)),
                                Spacer(),
                                Padding(
                                    padding: getPadding(top: 2, bottom: 2),
                                    child: Text("msg_8hours_30minutes".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsRegular10Gray500)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowrightGray500,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(left: 5))
                              ])),
                      Container(
                          margin: getMargin(top: 10),
                          padding: getPadding(
                              left: 15, top: 14, right: 15, bottom: 14),
                          decoration: AppDecoration.fillGray50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder17),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCallGray600,
                                    height: getSize(20),
                                    width: getSize(20)),
                                Padding(
                                    padding: getPadding(left: 10, top: 2),
                                    child: Text("lbl_repeat".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular12)),
                                Spacer(),
                                Padding(
                                    padding: getPadding(top: 3, bottom: 2),
                                    child: Text("lbl_mon_to_fri".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsRegular10Gray500)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowrightGray500,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(left: 5))
                              ])),
                      Container(
                          margin: getMargin(top: 10, bottom: 5),
                          padding: getPadding(
                              left: 15, top: 13, right: 15, bottom: 13),
                          decoration: AppDecoration.fillGray50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder17),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgOffer,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(top: 2, bottom: 2)),
                                Padding(
                                    padding:
                                        getPadding(left: 10, top: 2, bottom: 3),
                                    child: Text("msg_vibrate_when_alarm".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular12)),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgWorkouttoggleactive,
                                    height: getVerticalSize(24),
                                    width: getHorizontalSize(44),
                                    margin: getMargin(left: 50))
                              ]))
                    ])),
            bottomNavigationBar: CustomButton(
                text: "lbl_add".tr,
                margin: getMargin(left: 31, right: 29, bottom: 40))));
  }

  onTapArrowleft11() {
    Get.back();
  }
}
