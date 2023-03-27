import '../sleep_schedule_screen/widgets/sleep_schedule_item_widget.dart';
import 'controller/sleep_schedule_controller.dart';
import 'models/sleep_schedule_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:jvgod1/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:jvgod1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:jvgod1/widgets/app_bar/custom_app_bar.dart';
import 'package:jvgod1/widgets/custom_button.dart';
import 'package:jvgod1/widgets/custom_icon_button.dart';

class SleepScheduleScreen extends GetWidget<SleepScheduleController> {
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
                    onTap: onTapArrowleft10),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl_sleep_schedule".tr),
                actions: [
                  AppbarIconbutton1(
                      svgPath: ImageConstant.imgDetailnavs,
                      margin:
                          getMargin(left: 30, top: 12, right: 30, bottom: 12))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 18, bottom: 18),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(left: 30, right: 30),
                              padding: getPadding(top: 20, bottom: 20),
                              decoration: AppDecoration
                                  .gradientIndigoA1006cBlue2006c
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder22),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 3, bottom: 3),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("msg_ideal_hours_for".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12Gray900),
                                              Padding(
                                                  padding: getPadding(top: 3),
                                                  child: RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text: "lbl_8".tr,
                                                            style: TextStyle(
                                                                color: ColorConstant
                                                                    .indigoA100,
                                                                fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                        TextSpan(
                                                            text:
                                                                "lbl_hours2".tr,
                                                            style: TextStyle(
                                                                color: ColorConstant
                                                                    .indigoA100,
                                                                fontSize:
                                                                    getFontSize(
                                                                        12),
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400)),
                                                        TextSpan(
                                                            text: " ",
                                                            style: TextStyle(
                                                                color: ColorConstant
                                                                    .indigoA100,
                                                                fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                        TextSpan(
                                                            text: "lbl_30".tr,
                                                            style: TextStyle(
                                                                color: ColorConstant
                                                                    .indigoA100,
                                                                fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                        TextSpan(
                                                            text: "lbl_minutes"
                                                                .tr,
                                                            style: TextStyle(
                                                                color: ColorConstant
                                                                    .indigoA100,
                                                                fontSize:
                                                                    getFontSize(
                                                                        12),
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400))
                                                      ]),
                                                      textAlign:
                                                          TextAlign.left)),
                                              CustomButton(
                                                  width: getHorizontalSize(95),
                                                  text: "lbl_learn_more".tr,
                                                  margin: getMargin(top: 15),
                                                  variant: ButtonVariant
                                                      .GradientIndigoA100Blue200,
                                                  shape: ButtonShape
                                                      .RoundedBorder17,
                                                  padding: ButtonPadding
                                                      .PaddingAll10,
                                                  fontStyle: ButtonFontStyle
                                                      .PoppinsSemiBold10)
                                            ])),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgLayer1Orange300,
                                        height: getVerticalSize(100),
                                        width: getHorizontalSize(118))
                                  ]))),
                      Container(
                          height: getVerticalSize(499),
                          width: getHorizontalSize(405),
                          margin: getMargin(top: 30, bottom: 5),
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: getPadding(left: 60),
                                                  child: Text(
                                                      "lbl_your_schedule".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsSemiBold16))),
                                          Padding(
                                              padding: getPadding(top: 14),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Container(
                                                        padding: getPadding(
                                                            left: 17,
                                                            top: 16,
                                                            right: 17,
                                                            bottom: 16),
                                                        decoration: AppDecoration
                                                            .fillGray50
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder10),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              1),
                                                                  child: Text(
                                                                      "lbl_wed"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular12Gray600)),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              13),
                                                                      child: Text(
                                                                          "lbl_12"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtInterMedium14Gray600)))
                                                            ])),
                                                    Container(
                                                        margin:
                                                            getMargin(left: 15),
                                                        padding: getPadding(
                                                            left: 15,
                                                            top: 16,
                                                            right: 15,
                                                            bottom: 16),
                                                        decoration: AppDecoration
                                                            .fillGray50
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder10),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              1),
                                                                  child: Text(
                                                                      "lbl_thus"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular12Gray600)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              6,
                                                                          top:
                                                                              13),
                                                                  child: Text(
                                                                      "lbl_13"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterMedium14Gray600))
                                                            ])),
                                                    Container(
                                                        margin:
                                                            getMargin(left: 15),
                                                        padding: getPadding(
                                                            left: 22,
                                                            top: 16,
                                                            right: 22,
                                                            bottom: 16),
                                                        decoration: AppDecoration
                                                            .gradientIndigoA100Blue200
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder10),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  child: Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              1),
                                                                      child: Text(
                                                                          "lbl_fri"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtInterRegular12WhiteA700))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              13),
                                                                      child: Text(
                                                                          "lbl_14"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtInterMedium14WhiteA700)))
                                                            ])),
                                                    Container(
                                                        margin:
                                                            getMargin(left: 15),
                                                        padding: getPadding(
                                                            left: 20,
                                                            top: 16,
                                                            right: 20,
                                                            bottom: 16),
                                                        decoration: AppDecoration
                                                            .fillGray50
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder10),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              1),
                                                                      child: Text(
                                                                          "lbl_sat"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtInterRegular12Gray600))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  child: Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              13,
                                                                          right:
                                                                              1),
                                                                      child: Text(
                                                                          "lbl_15"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtInterMedium14Gray600)))
                                                            ])),
                                                    Container(
                                                        margin:
                                                            getMargin(left: 15),
                                                        padding: getPadding(
                                                            left: 19,
                                                            top: 16,
                                                            right: 19,
                                                            bottom: 16),
                                                        decoration: AppDecoration
                                                            .fillGray50
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
                                                                    .center,
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              1),
                                                                  child: Text(
                                                                      "lbl_sun"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular12Gray600)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              13),
                                                                  child: Text(
                                                                      "lbl_16"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterMedium14Gray600))
                                                            ]))
                                                  ])),
                                          Padding(
                                              padding: getPadding(
                                                  left: 60, top: 30, right: 60),
                                              child: Obx(() =>
                                                  ListView.separated(
                                                      physics:
                                                          NeverScrollableScrollPhysics(),
                                                      shrinkWrap: true,
                                                      separatorBuilder:
                                                          (context, index) {
                                                        return SizedBox(
                                                            height:
                                                                getVerticalSize(
                                                                    15));
                                                      },
                                                      itemCount: controller
                                                          .sleepScheduleModelObj
                                                          .value
                                                          .sleepScheduleItemList
                                                          .length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        SleepScheduleItemModel
                                                            model = controller
                                                                .sleepScheduleModelObj
                                                                .value
                                                                .sleepScheduleItemList[index];
                                                        return SleepScheduleItemWidget(
                                                            model);
                                                      }))),
                                          Container(
                                              margin: getMargin(
                                                  left: 60, top: 20, right: 60),
                                              padding: getPadding(all: 20),
                                              decoration: AppDecoration
                                                  .gradientDeeppurpleA1006cPink1006c
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder22),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                179),
                                                        margin: getMargin(
                                                            right: 95),
                                                        child: RichText(
                                                            text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                      text: "lbl_you_will_get"
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .gray900,
                                                                          fontSize: getFontSize(
                                                                              12),
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontWeight:
                                                                              FontWeight.w400)),
                                                                  TextSpan(
                                                                      text: "lbl_8"
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .gray900,
                                                                          fontSize: getFontSize(
                                                                              14),
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontWeight:
                                                                              FontWeight.w500)),
                                                                  TextSpan(
                                                                      text: "lbl_hours"
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .gray900,
                                                                          fontSize: getFontSize(
                                                                              12),
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontWeight:
                                                                              FontWeight.w400)),
                                                                  TextSpan(
                                                                      text: "lbl_10"
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .gray900,
                                                                          fontSize: getFontSize(
                                                                              14),
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontWeight:
                                                                              FontWeight.w500)),
                                                                  TextSpan(
                                                                      text: "msg_minutes_for_tonight"
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .gray900,
                                                                          fontSize: getFontSize(
                                                                              12),
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontWeight:
                                                                              FontWeight.w400))
                                                                ]),
                                                            textAlign: TextAlign
                                                                .left)),
                                                    Container(
                                                        height:
                                                            getVerticalSize(15),
                                                        width:
                                                            getHorizontalSize(
                                                                275),
                                                        margin:
                                                            getMargin(top: 7),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Container(
                                                                      height:
                                                                          getVerticalSize(
                                                                              15),
                                                                      width: getHorizontalSize(
                                                                          275),
                                                                      decoration: BoxDecoration(
                                                                          color: ColorConstant
                                                                              .gray50,
                                                                          borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                              7))),
                                                                      child: ClipRRect(
                                                                          borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                              7)),
                                                                          child: LinearProgressIndicator(
                                                                              value: 0.89,
                                                                              backgroundColor: ColorConstant.gray50)))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child: Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              112),
                                                                      child: Text(
                                                                          "lbl_96"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtPoppinsMedium10)))
                                                            ]))
                                                  ]))
                                        ])),
                                CustomIconButton(
                                    height: 60,
                                    width: 60,
                                    margin: getMargin(right: 30),
                                    variant: IconButtonVariant
                                        .GradientDeeppurpleA100Pink100,
                                    shape: IconButtonShape.CircleBorder30,
                                    padding: IconButtonPadding.PaddingAll15,
                                    alignment: Alignment.bottomRight,
                                    child: CustomImageView(
                                        svgPath:
                                            ImageConstant.imgPlusWhiteA700))
                              ]))
                    ]))));
  }

  onTapArrowleft10() {
    Get.back();
  }
}
