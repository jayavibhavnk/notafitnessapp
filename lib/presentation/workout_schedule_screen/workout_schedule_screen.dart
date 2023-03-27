import 'controller/workout_schedule_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:jvgod1/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:jvgod1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:jvgod1/widgets/app_bar/custom_app_bar.dart';
import 'package:jvgod1/widgets/custom_button.dart';
import 'package:jvgod1/widgets/custom_icon_button.dart';

class WorkoutScheduleScreen extends GetWidget<WorkoutScheduleController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(84),
                leadingWidth: 62,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleftGray900,
                    margin: getMargin(left: 30, top: 12, bottom: 12),
                    onTap: onTapArrowleft4),
                centerTitle: true,
                title: AppbarSubtitle1(text: "msg_workout_schedule".tr),
                actions: [
                  AppbarIconbutton1(
                      svgPath: ImageConstant.imgDetailnavs,
                      margin:
                          getMargin(left: 30, top: 12, right: 30, bottom: 12))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 13, bottom: 13),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 4),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgArrowleftGray500,
                                        height: getSize(22),
                                        width: getSize(22),
                                        margin: getMargin(bottom: 1),
                                        onTap: () {
                                          onTapImgArrowleftOne();
                                        }),
                                    Padding(
                                        padding: getPadding(left: 30, top: 2),
                                        child: Text("lbl_may_2021".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular14Gray500)),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgArrowrightGray500,
                                        height: getSize(22),
                                        width: getSize(22),
                                        margin: getMargin(left: 30, bottom: 1))
                                  ]))),
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: getPadding(top: 13),
                          child: IntrinsicWidth(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                Spacer(),
                                Container(
                                    padding: getPadding(
                                        left: 17,
                                        top: 16,
                                        right: 17,
                                        bottom: 16),
                                    decoration: AppDecoration.fillGray50
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("lbl_wed".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular12Gray600)),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: getPadding(top: 13),
                                                  child: Text("lbl_12".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium14Gray600)))
                                        ])),
                                Container(
                                    margin: getMargin(left: 15),
                                    padding: getPadding(
                                        left: 15,
                                        top: 16,
                                        right: 15,
                                        bottom: 16),
                                    decoration: AppDecoration.fillGray50
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("lbl_thus".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular12Gray600)),
                                          Padding(
                                              padding:
                                                  getPadding(left: 6, top: 13),
                                              child: Text("lbl_13".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium14Gray600))
                                        ])),
                                Container(
                                    margin: getMargin(left: 15),
                                    padding: getPadding(
                                        left: 22,
                                        top: 16,
                                        right: 22,
                                        bottom: 16),
                                    decoration: AppDecoration
                                        .gradientIndigoA100Blue200
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text("lbl_fri".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular12WhiteA700))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: getPadding(top: 13),
                                                  child: Text("lbl_14".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium14WhiteA700)))
                                        ])),
                                Container(
                                    margin: getMargin(left: 15),
                                    padding: getPadding(
                                        left: 20,
                                        top: 16,
                                        right: 20,
                                        bottom: 16),
                                    decoration: AppDecoration.fillGray50
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text("lbl_sat".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular12Gray600))),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                  padding: getPadding(
                                                      top: 13, right: 1),
                                                  child: Text("lbl_15".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium14Gray600)))
                                        ])),
                                Container(
                                    margin: getMargin(left: 15),
                                    padding: getPadding(
                                        left: 19,
                                        top: 16,
                                        right: 19,
                                        bottom: 16),
                                    decoration: AppDecoration.fillGray50
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("lbl_sun".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular12Gray600)),
                                          Padding(
                                              padding: getPadding(top: 13),
                                              child: Text("lbl_16".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium14Gray600))
                                        ]))
                              ]))),
                      Container(
                          height: getVerticalSize(550),
                          width: double.maxFinite,
                          margin: getMargin(top: 29),
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    margin: getMargin(top: 28, bottom: 27),
                                    padding: getPadding(
                                        left: 88,
                                        top: 76,
                                        right: 88,
                                        bottom: 76),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                fs.Svg(ImageConstant.imgGroup1),
                                            fit: BoxFit.cover)),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getVerticalSize(35),
                                              width: getHorizontalSize(184),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Card(
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            elevation: 0,
                                                            margin:
                                                                EdgeInsets.all(
                                                                    0),
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder17),
                                                            child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        35),
                                                                width:
                                                                    getHorizontalSize(
                                                                        184),
                                                                decoration: AppDecoration
                                                                    .gradientDeeppurpleA100a2Pink100a2
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder17),
                                                                child: Stack(
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgRectangle5752,
                                                                          height: getVerticalSize(
                                                                              9),
                                                                          width: getHorizontalSize(
                                                                              184),
                                                                          radius: BorderRadius.circular(getHorizontalSize(
                                                                              4)),
                                                                          alignment:
                                                                              Alignment.bottomCenter)
                                                                    ])))),
                                                    Align(
                                                        alignment: Alignment
                                                            .center,
                                                        child: Text(
                                                            "msg_upperbody_workout2"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsRegular12WhiteA700))
                                                  ])),
                                          Spacer(),
                                          CustomButton(
                                              height: getVerticalSize(35),
                                              text: "msg_lowerbody_workout2".tr,
                                              margin: getMargin(
                                                  left: 15,
                                                  right: 2,
                                                  bottom: 79),
                                              variant:
                                                  ButtonVariant.FillGray50a2,
                                              shape:
                                                  ButtonShape.RoundedBorder17,
                                              padding:
                                                  ButtonPadding.PaddingAll10,
                                              fontStyle: ButtonFontStyle
                                                  .PoppinsRegular12Gray600)
                                        ]))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 30),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text("lbl_06_00".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular12),
                                                    Padding(
                                                        padding:
                                                            getPadding(left: 4),
                                                        child: Text("lbl_am".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsRegular12))
                                                  ])),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: getPadding(top: 19),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text("lbl_07_00".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsRegular12),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 5),
                                                            child: Text(
                                                                "lbl_am".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsRegular12))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: getPadding(top: 19),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text("lbl_08_00".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsRegular12),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 4),
                                                            child: Text(
                                                                "lbl_am".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsRegular12))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: getPadding(top: 19),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text("lbl_09_00".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsRegular12),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 4),
                                                            child: Text(
                                                                "lbl_am".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsRegular12))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: getPadding(top: 19),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text("lbl_10_00".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsRegular12),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 7),
                                                            child: Text(
                                                                "lbl_am".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsRegular12))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: getPadding(top: 19),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text("lbl_11_00".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsRegular12),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 11),
                                                            child: Text(
                                                                "lbl_am".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsRegular12))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: getPadding(top: 19),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text("lbl_12_00".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsRegular12),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 8),
                                                            child: Text(
                                                                "lbl_am".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsRegular12))
                                                      ]))),
                                          Padding(
                                              padding: getPadding(top: 19),
                                              child: Row(children: [
                                                Text("lbl_01_00".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular12),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 7),
                                                    child: Text("lbl_pm".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular12))
                                              ])),
                                          Padding(
                                              padding: getPadding(top: 19),
                                              child: Row(children: [
                                                Text("lbl_02_00".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular12),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 4),
                                                    child: Text("lbl_pm".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular12))
                                              ])),
                                          Padding(
                                              padding: getPadding(top: 19),
                                              child: Row(children: [
                                                Text("lbl_03_00".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular12),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 4),
                                                    child: Text("lbl_pm".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular12))
                                              ])),
                                          Padding(
                                              padding: getPadding(top: 19),
                                              child: Row(children: [
                                                Text("lbl_04_00".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular12),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 4),
                                                    child: Text("lbl_pm".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular12))
                                              ])),
                                          Padding(
                                              padding: getPadding(top: 19),
                                              child: Row(children: [
                                                Text("lbl_05_00".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular12),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 4),
                                                    child: Text("lbl_pm".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular12))
                                              ])),
                                          Padding(
                                              padding: getPadding(top: 19),
                                              child: Row(children: [
                                                Text("lbl_06_00".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular12),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 4),
                                                    child: Text("lbl_pm".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular12))
                                              ])),
                                          Padding(
                                              padding: getPadding(top: 19),
                                              child: Row(children: [
                                                Text("lbl_07_00".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular12),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 5),
                                                    child: Text("lbl_pm".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular12))
                                              ])),
                                          Padding(
                                              padding: getPadding(top: 19),
                                              child: Row(children: [
                                                Text("lbl_08_00".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular12),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 4),
                                                    child: Text("lbl_pm".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular12))
                                              ]))
                                        ]))),
                            CustomImageView(
                                imagePath: ImageConstant.imgActiveline,
                                height: getVerticalSize(7),
                                width: getHorizontalSize(365),
                                alignment: Alignment.topCenter,
                                margin: getMargin(top: 126)),
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    width: getHorizontalSize(131),
                                    margin: getMargin(top: 45),
                                    padding: getPadding(top: 7, bottom: 7),
                                    decoration: AppDecoration
                                        .txtGradientDeeppurpleA100a2Pink100a2
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder17),
                                    child: Text("msg_ab_workout_7_30am".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.right,
                                        style: AppStyle
                                            .txtPoppinsRegular12WhiteA700))),
                            CustomIconButton(
                                height: 60,
                                width: 60,
                                margin: getMargin(right: 30, bottom: 26),
                                variant:
                                    IconButtonVariant.OutlineDeeppurpleA1004c,
                                shape: IconButtonShape.CircleBorder30,
                                padding: IconButtonPadding.PaddingAll15,
                                alignment: Alignment.bottomRight,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgPlusWhiteA700))
                          ]))
                    ]))));
  }

  onTapImgArrowleftOne() {
    Get.back();
  }

  onTapArrowleft4() {
    Get.back();
  }
}
