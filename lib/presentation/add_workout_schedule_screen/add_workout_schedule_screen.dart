import 'controller/add_workout_schedule_controller.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:jvgod1/widgets/app_bar/appbar_image.dart';
import 'package:jvgod1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:jvgod1/widgets/app_bar/custom_app_bar.dart';
import 'package:jvgod1/widgets/custom_button.dart';

class AddWorkoutScheduleScreen extends GetWidget<AddWorkoutScheduleController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 62,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgClose,
                    margin: getMargin(left: 30, top: 12, bottom: 12),
                    onTap: onTapClose1),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl_add_schedule".tr),
                actions: [
                  AppbarImage(
                      height: getSize(32),
                      width: getSize(32),
                      svgPath: ImageConstant.imgUserGray5032x32,
                      margin:
                          getMargin(left: 30, top: 12, right: 30, bottom: 12))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 18, bottom: 18),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 30),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCalendar,
                                    height: getSize(22),
                                    width: getSize(22),
                                    margin: getMargin(bottom: 1)),
                                Padding(
                                    padding: getPadding(left: 10, top: 2),
                                    child: Text("msg_thu_27_may_2021".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular14))
                              ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 30, top: 28),
                              child: Text("lbl_time".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium14))),
                      Container(
                          height: getVerticalSize(77),
                          width: double.maxFinite,
                          margin: getMargin(top: 10),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: getHorizontalSize(57),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                              "lbl_2".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsRegular12Gray5007a)),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 9),
                                                              child: Text(
                                                                  "lbl_3".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsMedium14Gray600))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 10),
                                                          child: Text(
                                                              "lbl_4".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsRegular12Gray5007a))
                                                    ]),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 30),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      right: 1),
                                                              child: Text(
                                                                  "lbl_29".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsRegular12Gray5007a)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 9),
                                                              child: Text(
                                                                  "lbl_30".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsMedium14Gray600)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 10,
                                                                      right: 3),
                                                              child: Text(
                                                                  "lbl_31".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsRegular12Gray5007a))
                                                        ]))
                                              ])),
                                      Padding(
                                          padding:
                                              getPadding(left: 30, bottom: 28),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("lbl_am".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular12Gray5007a),
                                                Padding(
                                                    padding: getPadding(top: 9),
                                                    child: Text("lbl_pm".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular14))
                                              ]))
                                    ])),
                            CustomImageView(
                                svgPath: ImageConstant.imgLine,
                                height: getVerticalSize(31),
                                width: getHorizontalSize(375),
                                alignment: Alignment.center)
                          ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 30, top: 29),
                              child: Text("lbl_details_workout".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium14))),
                      Container(
                          margin: getMargin(left: 30, top: 10, right: 30),
                          padding: getPadding(all: 15),
                          decoration: AppDecoration.fillGray50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder17),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgBag,
                                    height: getSize(20),
                                    width: getSize(20)),
                                Padding(
                                    padding: getPadding(left: 10, bottom: 1),
                                    child: Text("lbl_choose_workout".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular12)),
                                Padding(
                                    padding: getPadding(left: 31, top: 4),
                                    child: Text("msg_upperbody_workout".tr,
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
                          margin: getMargin(left: 30, top: 10, right: 30),
                          padding: getPadding(all: 15),
                          decoration: AppDecoration.fillGray50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder17),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgSort,
                                    height: getSize(20),
                                    width: getSize(20)),
                                Padding(
                                    padding: getPadding(left: 10, top: 1),
                                    child: Text("lbl_difficulity".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular12)),
                                Spacer(),
                                Padding(
                                    padding: getPadding(top: 4),
                                    child: Text("lbl_beginner".tr,
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
                          margin: getMargin(left: 30, top: 10, right: 30),
                          padding: getPadding(all: 15),
                          decoration: AppDecoration.fillGray50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder17),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgVolume,
                                    height: getSize(20),
                                    width: getSize(20)),
                                Padding(
                                    padding: getPadding(left: 10, top: 2),
                                    child: Text("msg_custom_repetitions".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular12)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowrightGray500,
                                    height: getSize(20),
                                    width: getSize(20))
                              ])),
                      Container(
                          margin: getMargin(
                              left: 30, top: 10, right: 30, bottom: 5),
                          padding: getPadding(
                              left: 15, top: 14, right: 15, bottom: 14),
                          decoration: AppDecoration.fillGray50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder17),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgVolume,
                                    height: getSize(20),
                                    width: getSize(20)),
                                Padding(
                                    padding: getPadding(left: 10, top: 2),
                                    child: Text("lbl_custom_weights".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular12)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowrightGray500,
                                    height: getSize(20),
                                    width: getSize(20))
                              ]))
                    ])),
            bottomNavigationBar: CustomButton(
                text: "lbl_save".tr,
                margin: getMargin(left: 30, right: 30, bottom: 40))));
  }

  onTapClose1() {
    Get.back();
  }
}
