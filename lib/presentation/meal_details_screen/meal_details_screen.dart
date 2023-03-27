import '../meal_details_screen/widgets/listone1_item_widget.dart';
import '../meal_details_screen/widgets/listuser_item_widget.dart';
import 'controller/meal_details_controller.dart';
import 'models/listone1_item_model.dart';
import 'models/listuser_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:jvgod1/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:jvgod1/widgets/app_bar/custom_app_bar.dart';

class MealDetailsScreen extends GetWidget<MealDetailsController> {
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
                    onTap: onTapArrowleft7),
                actions: [
                  AppbarIconbutton1(
                      svgPath: ImageConstant.imgDetailnavs,
                      margin: getMargin(left: 30, right: 30))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(1218),
                        width: double.maxFinite,
                        margin: getMargin(top: 50),
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  height: getVerticalSize(288),
                                  width: getHorizontalSize(289),
                                  decoration:
                                      AppDecoration.gradientIndigoA100Blue200,
                                  child: Stack(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant
                                            .imgVectorWhiteA700288x289,
                                        height: getVerticalSize(288),
                                        width: getHorizontalSize(289),
                                        alignment: Alignment.center)
                                  ]))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  margin: getMargin(bottom: 27),
                                  padding: getPadding(
                                      left: 30, top: 10, right: 30, bottom: 10),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder40),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                                width: getHorizontalSize(50),
                                                child: Divider(
                                                    height: getVerticalSize(5),
                                                    thickness:
                                                        getVerticalSize(5),
                                                    color: ColorConstant
                                                        .gray90063))),
                                        Padding(
                                            padding: getPadding(top: 27),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "msg_blueberry_pancake"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsBold16Gray900),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 3),
                                                            child: RichText(
                                                                text: TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                          text: "lbl_by"
                                                                              .tr,
                                                                          style: TextStyle(
                                                                              color: ColorConstant.gray600,
                                                                              fontSize: getFontSize(12),
                                                                              fontFamily: 'Poppins',
                                                                              fontWeight: FontWeight.w400)),
                                                                      TextSpan(
                                                                          text: "lbl_james_ruth"
                                                                              .tr,
                                                                          style: TextStyle(
                                                                              color: ColorConstant.indigoA100,
                                                                              fontSize: getFontSize(12),
                                                                              fontFamily: 'Poppins',
                                                                              fontWeight: FontWeight.w400))
                                                                    ]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left))
                                                      ]),
                                                  Container(
                                                      height: getSize(32),
                                                      width: getSize(32),
                                                      margin: getMargin(
                                                          top: 5, bottom: 8),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgLovebg,
                                                                height:
                                                                    getSize(32),
                                                                width:
                                                                    getSize(32),
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgFavorite,
                                                                height:
                                                                    getSize(16),
                                                                width:
                                                                    getSize(16),
                                                                alignment:
                                                                    Alignment
                                                                        .center)
                                                          ]))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 137),
                                            child: Text("lbl_descriptions".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsSemiBold16)),
                                        Container(
                                            width: getHorizontalSize(315),
                                            margin:
                                                getMargin(top: 13, bottom: 620),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text:
                                                          "msg_pancakes_are_some2"
                                                              .tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .gray600,
                                                          fontSize:
                                                              getFontSize(12),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w400)),
                                                  TextSpan(
                                                      text: "lbl_read_more".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .indigoA100,
                                                          fontSize:
                                                              getFontSize(12),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w500))
                                                ]),
                                                textAlign: TextAlign.left))
                                      ]))),
                          Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                  padding: getPadding(top: 340),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl_nutrition".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsSemiBold16),
                                        Padding(
                                            padding: getPadding(top: 15),
                                            child: Row(children: [
                                              Container(
                                                  width: getHorizontalSize(81),
                                                  padding: getPadding(all: 10),
                                                  decoration: AppDecoration
                                                      .gradientIndigoA1006cBlue2006c
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder14),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowdownRed500,
                                                        height: getSize(18),
                                                        width: getSize(18)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 5,
                                                            top: 1,
                                                            bottom: 1),
                                                        child: Text(
                                                            "lbl_180kcal".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsRegular10Gray900))
                                                  ])),
                                              Container(
                                                  width: getHorizontalSize(84),
                                                  margin: getMargin(left: 15),
                                                  padding: getPadding(
                                                      left: 10,
                                                      top: 9,
                                                      right: 10,
                                                      bottom: 9),
                                                  decoration: AppDecoration
                                                      .gradientIndigoA1006cBlue2006c
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder14),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgFaticon,
                                                        height: getSize(18),
                                                        width: getSize(18)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 5, top: 3),
                                                        child: Text(
                                                            "lbl_30g_fats".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsRegular10Gray900))
                                                  ])),
                                              Container(
                                                  width: getHorizontalSize(106),
                                                  margin: getMargin(left: 15),
                                                  padding: getPadding(
                                                      left: 10,
                                                      top: 9,
                                                      right: 10,
                                                      bottom: 9),
                                                  decoration: AppDecoration
                                                      .gradientIndigoA1006cBlue2006c
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder14),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgLightbulbBlack900,
                                                        height: getSize(18),
                                                        width: getSize(18)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 5, top: 3),
                                                        child: Text(
                                                            "lbl_20g_proteins"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsRegular10Gray900))
                                                  ])),
                                              Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: getMargin(left: 15),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder14),
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(38),
                                                      width:
                                                          getHorizontalSize(29),
                                                      padding: getPadding(
                                                          left: 1,
                                                          top: 10,
                                                          right: 1,
                                                          bottom: 10),
                                                      decoration: AppDecoration
                                                          .gradientIndigoA1006cBlue2006c
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder14),
                                                      child: Stack(children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgSignal,
                                                            height: getSize(18),
                                                            width: getSize(18),
                                                            alignment: Alignment
                                                                .centerRight)
                                                      ])))
                                            ]))
                                      ]))),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                  padding: getPadding(bottom: 443),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(right: 50),
                                            child: Row(children: [
                                              Container(
                                                  width: getHorizontalSize(168),
                                                  child: Text(
                                                      "msg_ingredients_that".tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsSemiBold16)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 101,
                                                      top: 13,
                                                      bottom: 14),
                                                  child: Text("lbl_6_items".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12))
                                            ])),
                                        Container(
                                            height: getVerticalSize(138),
                                            child: Obx(() => ListView.separated(
                                                padding: getPadding(top: 16),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                      height:
                                                          getVerticalSize(15));
                                                },
                                                itemCount: controller
                                                    .mealDetailsModelObj
                                                    .value
                                                    .listuserItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  ListuserItemModel model =
                                                      controller
                                                              .mealDetailsModelObj
                                                              .value
                                                              .listuserItemList[
                                                          index];
                                                  return ListuserItemWidget(
                                                      model);
                                                })))
                                      ]))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                  padding: getPadding(left: 30, right: 30),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("lbl_step_by_step".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsSemiBold16),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 1, bottom: 4),
                                                  child: Text("lbl_8_steps".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12))
                                            ]),
                                        Padding(
                                            padding: getPadding(top: 12),
                                            child: Obx(() => ListView.separated(
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                      height:
                                                          getVerticalSize(4));
                                                },
                                                itemCount: controller
                                                    .mealDetailsModelObj
                                                    .value
                                                    .listone1ItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  Listone1ItemModel model =
                                                      controller
                                                              .mealDetailsModelObj
                                                              .value
                                                              .listone1ItemList[
                                                          index];
                                                  return Listone1ItemWidget(
                                                      model);
                                                })))
                                      ])))
                        ]))))));
  }

  onTapArrowleft7() {
    Get.back();
  }
}
