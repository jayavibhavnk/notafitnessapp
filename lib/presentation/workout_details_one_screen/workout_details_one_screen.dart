import '../workout_details_one_screen/widgets/listinclinepushups_item_widget.dart';
import '../workout_details_one_screen/widgets/listrectangle5736_item_widget.dart';
import 'controller/workout_details_one_controller.dart';
import 'models/listinclinepushups_item_model.dart';
import 'models/listrectangle5736_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:jvgod1/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:jvgod1/widgets/app_bar/custom_app_bar.dart';
import 'package:jvgod1/widgets/custom_button.dart';

class WorkoutDetailsOneScreen extends GetWidget<WorkoutDetailsOneController> {
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
                    onTap: onTapArrowleft3),
                actions: [
                  AppbarIconbutton1(
                      svgPath: ImageConstant.imgDetailnavs,
                      margin: getMargin(left: 30, right: 30))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(1640),
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  height: getVerticalSize(418),
                                  width: double.maxFinite,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment(1, 1),
                                          end: Alignment(-0.24, -0.31),
                                          colors: [
                                        ColorConstant.indigoA100,
                                        ColorConstant.blue200
                                      ])))),
                          CustomImageView(
                              svgPath: ImageConstant.imgVectorWhiteA700,
                              height: getVerticalSize(415),
                              width: getHorizontalSize(316),
                              alignment: Alignment.topCenter,
                              margin: getMargin(top: 62)),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  padding: getPadding(
                                      left: 30, top: 10, right: 30, bottom: 10),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder40),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            width: getHorizontalSize(50),
                                            child: Divider(
                                                height: getVerticalSize(5),
                                                thickness: getVerticalSize(5),
                                                color:
                                                    ColorConstant.gray90063)),
                                        Padding(
                                            padding: getPadding(top: 27),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
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
                                                            "msg_fullbody_workout"
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
                                                                top: 2),
                                                            child: Text(
                                                                "msg_11_exercises_32mins2"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsRegular12))
                                                      ]),
                                                  Container(
                                                      height: getSize(32),
                                                      width: getSize(32),
                                                      margin: getMargin(
                                                          top: 5, bottom: 6),
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
                                        Container(
                                            margin: getMargin(top: 20),
                                            padding: getPadding(
                                                left: 15,
                                                top: 14,
                                                right: 15,
                                                bottom: 14),
                                            decoration: AppDecoration
                                                .gradientIndigoA1006cBlue2006c
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder14),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgCalendar,
                                                      height: getSize(22),
                                                      width: getSize(22)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 10,
                                                          top: 1,
                                                          bottom: 2),
                                                      child: Text(
                                                          "msg_schedule_workout"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular12)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 46,
                                                          top: 5,
                                                          bottom: 3),
                                                      child: Text(
                                                          "lbl_5_27_09_00_am"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular10)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowrightGray600,
                                                      height: getSize(16),
                                                      width: getSize(16),
                                                      margin: getMargin(
                                                          left: 10,
                                                          top: 3,
                                                          bottom: 3))
                                                ])),
                                        Container(
                                            margin: getMargin(
                                                top: 15, bottom: 1062),
                                            padding: getPadding(
                                                left: 15,
                                                top: 14,
                                                right: 15,
                                                bottom: 14),
                                            decoration: AppDecoration
                                                .gradientDeeppurpleA1006cPink1006c
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder14),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgSort,
                                                      height: getSize(22),
                                                      width: getSize(22)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 10,
                                                          top: 2,
                                                          bottom: 1),
                                                      child: Text(
                                                          "lbl_difficulity".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular12)),
                                                  Spacer(),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 5, bottom: 3),
                                                      child: Text(
                                                          "lbl_beginner".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular10)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowrightGray600,
                                                      height: getSize(16),
                                                      width: getSize(16),
                                                      margin: getMargin(
                                                          left: 10,
                                                          top: 3,
                                                          bottom: 3))
                                                ]))
                                      ]))),
                          Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                  padding: getPadding(top: 598),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(right: 105),
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("lbl_you_ll_need".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsSemiBold16),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 179,
                                                          top: 2,
                                                          bottom: 3),
                                                      child: Text(
                                                          "lbl_5_items".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium12Gray500))
                                                ])),
                                        Padding(
                                            padding:
                                                getPadding(top: 14, right: 75),
                                            child: Row(children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 1),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Card(
                                                            clipBehavior: Clip
                                                                .antiAlias,
                                                            elevation: 0,
                                                            margin: EdgeInsets
                                                                .all(0),
                                                            color: ColorConstant
                                                                .gray50,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder14),
                                                            child: Container(
                                                                height: getSize(
                                                                    130),
                                                                width:
                                                                    getSize(
                                                                        130),
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            32,
                                                                        top: 38,
                                                                        right:
                                                                            32,
                                                                        bottom:
                                                                            38),
                                                                decoration: AppDecoration
                                                                    .fillGray50
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder14),
                                                                child: Stack(
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgSettings,
                                                                          height: getVerticalSize(
                                                                              53),
                                                                          width: getHorizontalSize(
                                                                              65),
                                                                          alignment:
                                                                              Alignment.center)
                                                                    ]))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 9),
                                                            child: Text(
                                                                "lbl_barbell"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsRegular12Black900))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(left: 15),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Card(
                                                            clipBehavior: Clip
                                                                .antiAlias,
                                                            elevation: 0,
                                                            margin: EdgeInsets
                                                                .all(0),
                                                            color: ColorConstant
                                                                .gray50,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder14),
                                                            child: Container(
                                                                height: getSize(
                                                                    130),
                                                                width:
                                                                    getSize(
                                                                        130),
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            34,
                                                                        top: 26,
                                                                        right:
                                                                            34,
                                                                        bottom:
                                                                            26),
                                                                decoration: AppDecoration
                                                                    .fillGray50
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder14),
                                                                child: Stack(
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgMusicGray90002,
                                                                          height: getVerticalSize(
                                                                              77),
                                                                          width: getHorizontalSize(
                                                                              60),
                                                                          alignment:
                                                                              Alignment.center)
                                                                    ]))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 11),
                                                            child: Text(
                                                                "lbl_skipping_rope"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsRegular12Black900))
                                                      ])),
                                              SingleChildScrollView(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  padding: getPadding(
                                                      left: 15, bottom: 1),
                                                  child: IntrinsicWidth(
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                        Card(
                                                            clipBehavior: Clip
                                                                .antiAlias,
                                                            elevation: 0,
                                                            margin: EdgeInsets
                                                                .all(0),
                                                            color: ColorConstant
                                                                .gray50,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder14),
                                                            child: Container(
                                                                height: getSize(
                                                                    130),
                                                                width:
                                                                    getSize(
                                                                        130),
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            52,
                                                                        top: 27,
                                                                        right:
                                                                            52,
                                                                        bottom:
                                                                            27),
                                                                decoration: AppDecoration
                                                                    .fillGray50
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder14),
                                                                child: Stack(
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgAlarm,
                                                                          height: getVerticalSize(
                                                                              75),
                                                                          width: getHorizontalSize(
                                                                              25),
                                                                          alignment:
                                                                              Alignment.center)
                                                                    ]))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 9),
                                                            child: Text(
                                                                "lbl_bottle_1_liters"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsRegular12Black900))
                                                      ])))
                                            ]))
                                      ]))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                  padding: getPadding(left: 30, right: 30),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("lbl_exercises".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsSemiBold16),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 2, bottom: 3),
                                                  child: Text("lbl_3_sets".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium12Gray500))
                                            ]),
                                        Padding(
                                            padding: getPadding(top: 19),
                                            child: Text("lbl_set_1".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium12)),
                                        Padding(
                                            padding:
                                                getPadding(top: 15, right: 4),
                                            child: Obx(() => ListView.separated(
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                      height:
                                                          getVerticalSize(15));
                                                },
                                                itemCount: controller
                                                    .workoutDetailsOneModelObj
                                                    .value
                                                    .listrectangle5736ItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  Listrectangle5736ItemModel
                                                      model = controller
                                                          .workoutDetailsOneModelObj
                                                          .value
                                                          .listrectangle5736ItemList[index];
                                                  return Listrectangle5736ItemWidget(
                                                      model);
                                                }))),
                                        Container(
                                            height: getVerticalSize(318),
                                            width: getHorizontalSize(315),
                                            margin: getMargin(top: 19),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              right: 4),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    "lbl_set_2"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsMedium12),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                15),
                                                                    child: Obx(() => ListView.separated(
                                                                        physics: NeverScrollableScrollPhysics(),
                                                                        shrinkWrap: true,
                                                                        separatorBuilder: (context, index) {
                                                                          return SizedBox(
                                                                              height: getVerticalSize(15));
                                                                        },
                                                                        itemCount: controller.workoutDetailsOneModelObj.value.listinclinepushupsItemList.length,
                                                                        itemBuilder: (context, index) {
                                                                          ListinclinepushupsItemModel model = controller
                                                                              .workoutDetailsOneModelObj
                                                                              .value
                                                                              .listinclinepushupsItemList[index];
                                                                          return ListinclinepushupsItemWidget(
                                                                              model);
                                                                        })))
                                                              ]))),
                                                  CustomButton(
                                                      width: getHorizontalSize(
                                                          315),
                                                      text: "lbl_start_workout"
                                                          .tr,
                                                      margin:
                                                          getMargin(bottom: 75),
                                                      alignment: Alignment
                                                          .bottomCenter)
                                                ]))
                                      ])))
                        ]))))));
  }

  onTapArrowleft3() {
    Get.back();
  }
}
