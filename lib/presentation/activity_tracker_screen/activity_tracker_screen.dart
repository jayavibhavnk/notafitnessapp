import '../activity_tracker_screen/widgets/listlightbulb_item_widget.dart';
import 'controller/activity_tracker_controller.dart';
import 'models/listlightbulb_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:jvgod1/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:jvgod1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:jvgod1/widgets/app_bar/custom_app_bar.dart';
import 'package:jvgod1/widgets/custom_drop_down.dart';
import 'package:jvgod1/widgets/custom_icon_button.dart';

class ActivityTrackerScreen extends GetWidget<ActivityTrackerController> {
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
                    onTap: onTapArrowleft1),
                centerTitle: true,
                title: AppbarSubtitle1(text: "msg_activity_tracker".tr),
                actions: [
                  AppbarIconbutton1(
                      svgPath: ImageConstant.imgDetailnavs,
                      margin:
                          getMargin(left: 30, top: 12, right: 30, bottom: 12))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 29, top: 18, right: 29, bottom: 18),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(left: 1, right: 1),
                              padding: getPadding(all: 20),
                              decoration: AppDecoration
                                  .gradientIndigoA1006cBlue2006c
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder22),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 3),
                                              child: Text("lbl_today_target".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsSemiBold14Gray900)),
                                          CustomIconButton(
                                              height: 24,
                                              width: 24,
                                              variant: IconButtonVariant
                                                  .GradientIndigoA100Blue200,
                                              padding:
                                                  IconButtonPadding.PaddingAll5,
                                              child: CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgPlus))
                                        ]),
                                    Padding(
                                        padding: getPadding(top: 14),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                  child: Container(
                                                      margin:
                                                          getMargin(right: 7),
                                                      padding:
                                                          getPadding(all: 9),
                                                      decoration: AppDecoration
                                                          .fillWhiteA700
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder14),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgGlass1,
                                                                height:
                                                                    getVerticalSize(
                                                                        34),
                                                                width:
                                                                    getHorizontalSize(
                                                                        25),
                                                                margin:
                                                                    getMargin(
                                                                        top: 4,
                                                                        bottom:
                                                                            2)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            8),
                                                                child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                          "lbl_8l"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtPoppinsMedium14IndigoA100),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  1),
                                                                          child: Text(
                                                                              "lbl_water_intake".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPoppinsRegular12))
                                                                    ]))
                                                          ]))),
                                              Expanded(
                                                  child: Container(
                                                      margin:
                                                          getMargin(left: 7),
                                                      padding:
                                                          getPadding(all: 8),
                                                      decoration: AppDecoration
                                                          .fillWhiteA700
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder14),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgCut,
                                                            height: getSize(26),
                                                            width: getSize(26),
                                                            margin: getMargin(
                                                                top: 9,
                                                                bottom: 7)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 8),
                                                            child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                      "lbl_2400"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtPoppinsMedium14IndigoA100),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              3),
                                                                      child: Text(
                                                                          "lbl_foot_steps"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtPoppinsRegular12))
                                                                ]))
                                                      ])))
                                            ]))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 1, top: 30, right: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 4, bottom: 1),
                                    child: Text("msg_activity_progress".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsSemiBold16)),
                                CustomDropDown(
                                    width: getHorizontalSize(76),
                                    focusNode: FocusNode(),
                                    icon: Container(
                                        margin: getMargin(left: 5, right: 10),
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowdownWhiteA700)),
                                    hintText: "lbl_weekly".tr,
                                    items: controller.activityTrackerModelObj
                                        .value.dropdownItemList,
                                    onChanged: (value) {
                                      controller.onSelected(value);
                                    })
                              ])),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(left: 2, top: 15),
                              padding: getPadding(all: 20),
                              decoration: AppDecoration.outlineGray90011
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder22),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              decoration: AppDecoration
                                                  .fillGray50
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                        height: getVerticalSize(
                                                            39),
                                                        width:
                                                            getHorizontalSize(
                                                                22),
                                                        margin:
                                                            getMargin(top: 96),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            11)),
                                                            gradient: LinearGradient(
                                                                begin:
                                                                    Alignment(1,
                                                                        1),
                                                                end: Alignment(
                                                                    -0.24,
                                                                    -0.31),
                                                                colors: [
                                                                  ColorConstant
                                                                      .indigoA100,
                                                                  ColorConstant
                                                                      .blue200
                                                                ])))
                                                  ])),
                                          Container(
                                              decoration: AppDecoration
                                                  .fillGray50
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                        height: getVerticalSize(
                                                            98),
                                                        width:
                                                            getHorizontalSize(
                                                                22),
                                                        margin:
                                                            getMargin(top: 37),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            11)),
                                                            gradient: LinearGradient(
                                                                begin:
                                                                    Alignment(1,
                                                                        1),
                                                                end: Alignment(
                                                                    -0.24,
                                                                    -0.31),
                                                                colors: [
                                                                  ColorConstant
                                                                      .deepPurpleA100,
                                                                  ColorConstant
                                                                      .pink100
                                                                ])))
                                                  ])),
                                          Container(
                                              decoration: AppDecoration
                                                  .fillGray50
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                        height: getVerticalSize(
                                                            64),
                                                        width:
                                                            getHorizontalSize(
                                                                22),
                                                        margin:
                                                            getMargin(top: 71),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            11)),
                                                            gradient: LinearGradient(
                                                                begin:
                                                                    Alignment(1,
                                                                        1),
                                                                end: Alignment(
                                                                    -0.24,
                                                                    -0.31),
                                                                colors: [
                                                                  ColorConstant
                                                                      .indigoA100,
                                                                  ColorConstant
                                                                      .blue200
                                                                ])))
                                                  ])),
                                          Container(
                                              decoration: AppDecoration
                                                  .fillGray50
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                        height: getVerticalSize(
                                                            85),
                                                        width:
                                                            getHorizontalSize(
                                                                23),
                                                        margin:
                                                            getMargin(top: 50),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            11)),
                                                            gradient: LinearGradient(
                                                                begin:
                                                                    Alignment(1,
                                                                        1),
                                                                end: Alignment(
                                                                    -0.24,
                                                                    -0.31),
                                                                colors: [
                                                                  ColorConstant
                                                                      .deepPurpleA100,
                                                                  ColorConstant
                                                                      .pink100
                                                                ])))
                                                  ])),
                                          Container(
                                              decoration: AppDecoration
                                                  .fillGray50
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                        height: getVerticalSize(
                                                            108),
                                                        width:
                                                            getHorizontalSize(
                                                                22),
                                                        margin:
                                                            getMargin(top: 27),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            11)),
                                                            gradient: LinearGradient(
                                                                begin:
                                                                    Alignment(1,
                                                                        1),
                                                                end: Alignment(
                                                                    -0.24,
                                                                    -0.31),
                                                                colors: [
                                                                  ColorConstant
                                                                      .indigoA100,
                                                                  ColorConstant
                                                                      .blue200
                                                                ])))
                                                  ])),
                                          Container(
                                              decoration: AppDecoration
                                                  .fillGray50
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                        height: getVerticalSize(
                                                            39),
                                                        width:
                                                            getHorizontalSize(
                                                                22),
                                                        margin:
                                                            getMargin(top: 96),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            11)),
                                                            gradient: LinearGradient(
                                                                begin:
                                                                    Alignment(1,
                                                                        1),
                                                                end: Alignment(
                                                                    -0.24,
                                                                    -0.31),
                                                                colors: [
                                                                  ColorConstant
                                                                      .deepPurpleA100,
                                                                  ColorConstant
                                                                      .pink100
                                                                ])))
                                                  ])),
                                          Container(
                                              decoration: AppDecoration
                                                  .fillGray50
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                        height: getVerticalSize(
                                                            87),
                                                        width:
                                                            getHorizontalSize(
                                                                22),
                                                        margin:
                                                            getMargin(top: 48),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            11)),
                                                            gradient: LinearGradient(
                                                                begin:
                                                                    Alignment(1,
                                                                        1),
                                                                end: Alignment(
                                                                    -0.24,
                                                                    -0.31),
                                                                colors: [
                                                                  ColorConstant
                                                                      .indigoA100,
                                                                  ColorConstant
                                                                      .blue200
                                                                ])))
                                                  ]))
                                        ]),
                                    Padding(
                                        padding: getPadding(top: 6),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("lbl_sun".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12),
                                              Padding(
                                                  padding: getPadding(left: 17),
                                                  child: Text("lbl_mon".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12)),
                                              Padding(
                                                  padding: getPadding(left: 18),
                                                  child: Text("lbl_tue".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12)),
                                              Padding(
                                                  padding: getPadding(left: 18),
                                                  child: Text("lbl_wed".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12)),
                                              Padding(
                                                  padding: getPadding(left: 17),
                                                  child: Text("lbl_thu".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12)),
                                              Padding(
                                                  padding: getPadding(left: 24),
                                                  child: Text("lbl_fri".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12)),
                                              Padding(
                                                  padding: getPadding(left: 25),
                                                  child: Text("lbl_sat".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12))
                                            ]))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 1, top: 31, right: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_latest_activity".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold16),
                                Padding(
                                    padding: getPadding(top: 1, bottom: 5),
                                    child: Text("lbl_see_more".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtPoppinsMedium12Gray500))
                              ])),
                      Padding(
                          padding: getPadding(left: 1, top: 13, right: 1),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(15));
                              },
                              itemCount: controller.activityTrackerModelObj
                                  .value.listlightbulbItemList.length,
                              itemBuilder: (context, index) {
                                ListlightbulbItemModel model = controller
                                    .activityTrackerModelObj
                                    .value
                                    .listlightbulbItemList[index];
                                return ListlightbulbItemWidget(model);
                              })))
                    ]))));
  }

  onTapArrowleft1() {
    Get.back();
  }
}
