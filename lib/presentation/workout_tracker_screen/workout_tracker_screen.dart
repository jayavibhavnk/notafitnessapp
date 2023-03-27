import '../workout_tracker_screen/widgets/listfullbodyworkout_one_item_widget.dart';
import '../workout_tracker_screen/widgets/listprofile_item_widget.dart';
import 'controller/workout_tracker_controller.dart';
import 'models/listfullbodyworkout_one_item_model.dart';
import 'models/listprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/widgets/app_bar/appbar_image.dart';
import 'package:jvgod1/widgets/app_bar/custom_app_bar.dart';
import 'package:jvgod1/widgets/custom_button.dart';

class WorkoutTrackerScreen extends GetWidget<WorkoutTrackerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(72),
                leadingWidth: 62,
                leading: Container(
                    height: getSize(32),
                    width: getSize(32),
                    margin: getMargin(left: 30),
                    child: Stack(alignment: Alignment.center, children: [
                      AppbarImage(
                          height: getSize(32),
                          width: getSize(32),
                          svgPath: ImageConstant.imgUserGray50),
                      AppbarImage(
                          height: getSize(16),
                          width: getSize(16),
                          svgPath: ImageConstant.imgArrowleftGray900,
                          margin: getMargin(all: 8),
                          onTap: onTapArrowleft2)
                    ])),
                centerTitle: true,
                title: Text("lbl_workout_tracker".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsBold16),
                actions: [
                  AppbarImage(
                      height: getSize(32),
                      width: getSize(32),
                      svgPath: ImageConstant.imgUserGray5032x32,
                      margin: getMargin(left: 30, right: 30))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(1083),
                        width: double.maxFinite,
                        margin: getMargin(top: 20),
                        child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: EdgeInsets.all(0),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderBL20),
                                      child: Container(
                                          height: getVerticalSize(181),
                                          width: getHorizontalSize(315),
                                          decoration: AppDecoration
                                              .gradientIndigoA100Blue200
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .customBorderBL20),
                                          child: Stack(
                                              alignment: Alignment.topCenter,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: Padding(
                                                        padding:
                                                            getPadding(top: 10),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          163),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          283),
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              7),
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomCenter,
                                                                      children: [
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.topCenter,
                                                                            child: Container(
                                                                                height: getVerticalSize(137),
                                                                                width: getHorizontalSize(283),
                                                                                padding: getPadding(top: 11, bottom: 11),
                                                                                decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup15), fit: BoxFit.cover)),
                                                                                child: Stack(children: [
                                                                                  CustomImageView(svgPath: ImageConstant.imgLinegraphWhiteA700, height: getVerticalSize(110), width: getHorizontalSize(282), alignment: Alignment.center)
                                                                                ]))),
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.bottomCenter,
                                                                            child: Container(
                                                                                width: getHorizontalSize(275),
                                                                                margin: getMargin(left: 4, top: 145, right: 4),
                                                                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                                  Text("lbl_sun".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular12WhiteA700),
                                                                                  Text("lbl_mon".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular12WhiteA700),
                                                                                  Text("lbl_tue".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular12WhiteA700),
                                                                                  Text("lbl_wed".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular12WhiteA700),
                                                                                  Text("lbl_thu".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular12WhiteA700),
                                                                                  Text("lbl_fri".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsBold12WhiteA700),
                                                                                  Text("lbl_sat".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular12WhiteA700)
                                                                                ]))),
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgActivegraphWhiteA700,
                                                                            height: getVerticalSize(121),
                                                                            width: getHorizontalSize(25),
                                                                            alignment: Alignment.bottomRight,
                                                                            margin: getMargin(right: 39, bottom: 4))
                                                                      ])),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          bottom:
                                                                              17),
                                                                  child: Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .centerRight,
                                                                            child: Text("lbl_100".tr,
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtPoppinsRegular1062WhiteA700)),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 2, top: 12),
                                                                            child: Text("lbl_80".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular1062WhiteA700)),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 2, top: 10),
                                                                            child: Text("lbl_60".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular1062WhiteA700)),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 11),
                                                                            child: Text("lbl_40".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsBold1062WhiteA700)),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 3, top: 11),
                                                                            child: Text("lbl_202".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular1062WhiteA700)),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 3, top: 12),
                                                                            child: Text("lbl_0".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular1062WhiteA700))
                                                                      ]))
                                                            ]))),
                                                Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Container(
                                                        margin: getMargin(
                                                            left: 94,
                                                            right: 91),
                                                        padding:
                                                            getPadding(all: 10),
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
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Row(children: [
                                                                Text(
                                                                    "lbl_fri_28_may"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsRegular8),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            33),
                                                                    child: Text(
                                                                        "lbl_90"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsRegular8Green500)),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowup,
                                                                    height:
                                                                        getSize(
                                                                            8),
                                                                    width:
                                                                        getSize(
                                                                            8),
                                                                    margin: getMargin(
                                                                        top: 1,
                                                                        bottom:
                                                                            2))
                                                              ]),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              3),
                                                                  child: Text(
                                                                      "msg_upperbody_workout"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtPoppinsRegular10)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              1),
                                                                  child: Container(
                                                                      height:
                                                                          getVerticalSize(
                                                                              5),
                                                                      width: getHorizontalSize(
                                                                          110),
                                                                      decoration: BoxDecoration(
                                                                          color: ColorConstant
                                                                              .gray50,
                                                                          borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                              2))),
                                                                      child: ClipRRect(
                                                                          borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                              2)),
                                                                          child: LinearProgressIndicator(
                                                                              value: 0.79,
                                                                              backgroundColor: ColorConstant.gray50))))
                                                            ])))
                                              ])))),
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                      padding: getPadding(
                                          left: 30,
                                          top: 10,
                                          right: 30,
                                          bottom: 10),
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
                                                    width:
                                                        getHorizontalSize(50),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(5),
                                                        thickness:
                                                            getVerticalSize(5),
                                                        color: ColorConstant
                                                            .gray900))),
                                            Container(
                                                margin: getMargin(top: 25),
                                                padding: getPadding(
                                                    top: 14, bottom: 14),
                                                decoration: AppDecoration
                                                    .gradientIndigoA1006cBlue2006c
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder14),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 4,
                                                              bottom: 3),
                                                          child: Text(
                                                              "msg_daily_workout_schedule"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsMedium14)),
                                                      CustomButton(
                                                          width:
                                                              getHorizontalSize(
                                                                  68),
                                                          text: "lbl_check".tr,
                                                          margin:
                                                              getMargin(top: 1),
                                                          variant: ButtonVariant
                                                              .GradientIndigoA100Blue200,
                                                          shape: ButtonShape
                                                              .RoundedBorder14,
                                                          padding: ButtonPadding
                                                              .PaddingAll5,
                                                          fontStyle: ButtonFontStyle
                                                              .PoppinsRegular12)
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 31),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                          "msg_upcoming_workout"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsSemiBold16),
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 5),
                                                          child: Text(
                                                              "lbl_see_more".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsMedium12Gray500))
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 13),
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
                                                            .workoutTrackerModelObj
                                                            .value
                                                            .listprofileItemList
                                                            .length,
                                                        itemBuilder:
                                                            (context, index) {
                                                          ListprofileItemModel
                                                              model = controller
                                                                  .workoutTrackerModelObj
                                                                  .value
                                                                  .listprofileItemList[index];
                                                          return ListprofileItemWidget(
                                                              model);
                                                        }))),
                                            Padding(
                                                padding: getPadding(top: 29),
                                                child: Text(
                                                    "msg_what_do_you_want".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsSemiBold16)),
                                            Padding(
                                                padding: getPadding(
                                                    top: 15, bottom: 30),
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
                                                            .workoutTrackerModelObj
                                                            .value
                                                            .listfullbodyworkoutOneItemList
                                                            .length,
                                                        itemBuilder:
                                                            (context, index) {
                                                          ListfullbodyworkoutOneItemModel
                                                              model = controller
                                                                  .workoutTrackerModelObj
                                                                  .value
                                                                  .listfullbodyworkoutOneItemList[index];
                                                          return ListfullbodyworkoutOneItemWidget(
                                                              model);
                                                        })))
                                          ])))
                            ]))))));
  }

  onTapArrowleft2() {
    Get.back();
  }
}
