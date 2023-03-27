import '../sleep_tracker_screen/widgets/sleep_tracker_item_widget.dart';
import 'controller/sleep_tracker_controller.dart';
import 'models/sleep_tracker_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:jvgod1/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:jvgod1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:jvgod1/widgets/app_bar/custom_app_bar.dart';
import 'package:jvgod1/widgets/custom_button.dart';

class SleepTrackerScreen extends GetWidget<SleepTrackerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(72),
                leadingWidth: 62,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleftGray900,
                    margin: getMargin(left: 30),
                    onTap: onTapArrowleft9),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl_sleep_tracker".tr),
                actions: [
                  AppbarIconbutton1(
                      svgPath: ImageConstant.imgDetailnavs,
                      margin: getMargin(left: 30, right: 30))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 30, top: 30, right: 30, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(171),
                                  width: getHorizontalSize(306),
                                  margin: getMargin(left: 5),
                                  child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(left: 1),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 7),
                                                          child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgGroup51,
                                                                    height:
                                                                        getVerticalSize(
                                                                            137),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            283)),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 4,
                                                                        top: 8,
                                                                        right:
                                                                            4),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                              "lbl_sun".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPoppinsRegular12),
                                                                          Padding(
                                                                              padding: getPadding(left: 20),
                                                                              child: Text("lbl_mon".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular12)),
                                                                          Padding(
                                                                              padding: getPadding(left: 20),
                                                                              child: Text("lbl_tue".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular12)),
                                                                          Padding(
                                                                              padding: getPadding(left: 20),
                                                                              child: Text("lbl_wed".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular12)),
                                                                          Padding(
                                                                              padding: getPadding(left: 20),
                                                                              child: Text("lbl_thu".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsBold12)),
                                                                          Padding(
                                                                              padding: getPadding(left: 18),
                                                                              child: Text("lbl_fri".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular12)),
                                                                          Padding(
                                                                              padding: getPadding(left: 20),
                                                                              child: Text("lbl_sat".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular12))
                                                                        ]))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 17),
                                                          child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Text(
                                                                        "lbl_10h"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsRegular1062)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                12),
                                                                    child: Text(
                                                                        "lbl_8h"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsBold1062)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                10),
                                                                    child: Text(
                                                                        "lbl_6h"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsRegular1062)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                11),
                                                                    child: Text(
                                                                        "lbl_4h"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsRegular1062)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                11),
                                                                    child: Text(
                                                                        "lbl_2h"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsRegular1062)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                12),
                                                                    child: Text(
                                                                        "lbl_0h"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsRegular1062))
                                                              ]))
                                                    ]))),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgGraph,
                                            height: getVerticalSize(109),
                                            width: getHorizontalSize(285),
                                            alignment: Alignment.bottomLeft,
                                            margin: getMargin(bottom: 26)),
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: Padding(
                                                padding: getPadding(
                                                    right: 67, bottom: 17),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            10,
                                                                        top: 9,
                                                                        right:
                                                                            10,
                                                                        bottom:
                                                                            9),
                                                                decoration: AppDecoration
                                                                    .outlineGray90011
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder10),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                          "lbl_43_increase"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtPoppinsRegular10Green500)
                                                                    ])),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgComputerWhiteA700,
                                                                height:
                                                                    getSize(8),
                                                                width:
                                                                    getSize(8))
                                                          ]),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgActivedays,
                                                          height:
                                                              getVerticalSize(
                                                                  83),
                                                          width:
                                                              getHorizontalSize(
                                                                  7),
                                                          margin:
                                                              getMargin(top: 4))
                                                    ])))
                                      ])),
                              Container(
                                  height: getVerticalSize(148),
                                  width: getHorizontalSize(315),
                                  margin: getMargin(top: 30),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgSleepgraphWhiteA700,
                                            height: getVerticalSize(78),
                                            width: getHorizontalSize(315),
                                            alignment: Alignment.bottomCenter),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                decoration: AppDecoration
                                                    .outlineIndigoA1004c
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder22),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 20,
                                                              top: 21),
                                                          child: Text(
                                                              "msg_last_night_sleep"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsMedium14WhiteA700)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 20, top: 3),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text: "lbl_8"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .whiteA700,
                                                                            fontSize: getFontSize(
                                                                                16),
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w500)),
                                                                    TextSpan(
                                                                        text: "lbl_h"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .whiteA700,
                                                                            fontSize: getFontSize(
                                                                                14),
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w400)),
                                                                    TextSpan(
                                                                        text:
                                                                            " ",
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .whiteA700,
                                                                            fontSize: getFontSize(
                                                                                14),
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w500)),
                                                                    TextSpan(
                                                                        text: "lbl_20"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .whiteA700,
                                                                            fontSize: getFontSize(
                                                                                16),
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w500)),
                                                                    TextSpan(
                                                                        text: "lbl_m"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .whiteA700,
                                                                            fontSize: getFontSize(
                                                                                14),
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w400))
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left)),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgSleepgraphWhiteA70078x315,
                                                          height:
                                                              getVerticalSize(
                                                                  78),
                                                          width:
                                                              getHorizontalSize(
                                                                  315),
                                                          margin:
                                                              getMargin(top: 3))
                                                    ])))
                                      ])),
                              Container(
                                  margin: getMargin(top: 30),
                                  padding: getPadding(
                                      left: 20, top: 14, right: 20, bottom: 14),
                                  decoration: AppDecoration
                                      .gradientIndigoA1006cBlue2006c
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder17),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 4, bottom: 3),
                                            child: Text(
                                                "msg_daily_sleep_schedule".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium14)),
                                        CustomButton(
                                            width: getHorizontalSize(68),
                                            text: "lbl_check".tr,
                                            margin: getMargin(top: 1),
                                            variant: ButtonVariant
                                                .GradientIndigoA100Blue200,
                                            shape: ButtonShape.RoundedBorder14,
                                            padding: ButtonPadding.PaddingAll5,
                                            fontStyle: ButtonFontStyle
                                                .PoppinsRegular12)
                                      ])),
                              Padding(
                                  padding: getPadding(top: 32),
                                  child: Text("lbl_today_schedule".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsSemiBold16)),
                              Padding(
                                  padding: getPadding(top: 12),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(15));
                                      },
                                      itemCount: controller.sleepTrackerModelObj
                                          .value.sleepTrackerItemList.length,
                                      itemBuilder: (context, index) {
                                        SleepTrackerItemModel model = controller
                                            .sleepTrackerModelObj
                                            .value
                                            .sleepTrackerItemList[index];
                                        return SleepTrackerItemWidget(model);
                                      })))
                            ]))))));
  }

  onTapArrowleft9() {
    Get.back();
  }
}
