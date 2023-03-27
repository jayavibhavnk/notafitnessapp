import '../meal_planner_screen/widgets/listcar_item_widget.dart';
import '../meal_planner_screen/widgets/listobjects_item_widget.dart';
import 'controller/meal_planner_controller.dart';
import 'models/listcar_item_model.dart';
import 'models/listobjects_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:jvgod1/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:jvgod1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:jvgod1/widgets/app_bar/custom_app_bar.dart';
import 'package:jvgod1/widgets/custom_button.dart';
import 'package:jvgod1/widgets/custom_drop_down.dart';

class MealPlannerScreen extends GetWidget<MealPlannerController> {
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
                    onTap: onTapArrowleft5),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl_meal_planner".tr),
                actions: [
                  AppbarIconbutton1(
                      svgPath: ImageConstant.imgDetailnavs,
                      margin: getMargin(left: 30, right: 30))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 30, top: 30, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(right: 30),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 2, bottom: 3),
                                            child: Text(
                                                "lbl_meal_nutritions".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsSemiBold16)),
                                        CustomDropDown(
                                            width: getHorizontalSize(76),
                                            focusNode: FocusNode(),
                                            icon: Container(
                                                margin: getMargin(
                                                    left: 5, right: 10),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowdownWhiteA700)),
                                            hintText: "lbl_weekly".tr,
                                            items: controller
                                                .mealPlannerModelObj
                                                .value
                                                .dropdownItemList,
                                            onChanged: (value) {
                                              controller.onSelected(value);
                                            })
                                      ])),
                              Container(
                                  height: getVerticalSize(183),
                                  width: getHorizontalSize(315),
                                  margin: getMargin(top: 3),
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                                padding: getPadding(top: 12),
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
                                                              top: 5),
                                                          child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            139),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            285),
                                                                    child: Stack(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        children: [
                                                                          Align(
                                                                              alignment: Alignment.center,
                                                                              child: Container(
                                                                                  height: getVerticalSize(137),
                                                                                  width: getHorizontalSize(283),
                                                                                  padding: getPadding(top: 28, bottom: 28),
                                                                                  decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup51), fit: BoxFit.cover)),
                                                                                  child: Stack(children: [
                                                                                    CustomImageView(imagePath: ImageConstant.imgLine1, height: getVerticalSize(79), width: getHorizontalSize(282), radius: BorderRadius.circular(getHorizontalSize(39)), alignment: Alignment.center)
                                                                                  ]))),
                                                                          Align(
                                                                              alignment: Alignment.center,
                                                                              child: Container(
                                                                                  padding: getPadding(left: 70, top: 10, right: 70, bottom: 10),
                                                                                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgGroup52), fit: BoxFit.cover)),
                                                                                  child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.end, children: [
                                                                                    Container(
                                                                                        margin: getMargin(top: 22),
                                                                                        padding: getPadding(left: 10, top: 9, right: 10, bottom: 9),
                                                                                        decoration: AppDecoration.outlineGray90011.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                                                                                        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                          Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                                                                                            Text("lbl_fats".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular10),
                                                                                            Padding(padding: getPadding(left: 5, top: 2), child: Text("lbl_42".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular8RedA700)),
                                                                                            CustomImageView(svgPath: ImageConstant.imgArrowdownRedA700, height: getSize(8), width: getSize(8), margin: getMargin(top: 4, bottom: 2))
                                                                                          ]),
                                                                                          Align(
                                                                                              alignment: Alignment.center,
                                                                                              child: Container(
                                                                                                  height: getVerticalSize(5),
                                                                                                  width: getHorizontalSize(53),
                                                                                                  margin: getMargin(top: 3),
                                                                                                  child: Stack(alignment: Alignment.centerLeft, children: [
                                                                                                    Align(alignment: Alignment.center, child: SizedBox(width: getHorizontalSize(53), child: Divider(height: getVerticalSize(5), thickness: getVerticalSize(5), color: ColorConstant.gray50))),
                                                                                                    CustomImageView(imagePath: ImageConstant.imgFill, height: getVerticalSize(5), width: getHorizontalSize(18), alignment: Alignment.centerLeft)
                                                                                                  ])))
                                                                                        ]))
                                                                                  ]))),
                                                                          Align(
                                                                              alignment: Alignment.topLeft,
                                                                              child: Container(
                                                                                  margin: getMargin(left: 22),
                                                                                  padding: getPadding(left: 10, top: 9, right: 10, bottom: 9),
                                                                                  decoration: AppDecoration.outlineGray90011.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                                                                                  child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                    Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                                                                                      Text("lbl_calories".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular10),
                                                                                      Padding(padding: getPadding(left: 4, top: 2), child: Text("lbl_82".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular8Green500)),
                                                                                      CustomImageView(svgPath: ImageConstant.imgArrowup, height: getSize(8), width: getSize(8), margin: getMargin(top: 4, bottom: 2))
                                                                                    ]),
                                                                                    Align(alignment: Alignment.center, child: Padding(padding: getPadding(top: 3), child: Container(height: getVerticalSize(5), width: getHorizontalSize(74), decoration: BoxDecoration(color: ColorConstant.gray50, borderRadius: BorderRadius.circular(getHorizontalSize(2))), child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(2)), child: LinearProgressIndicator(value: 0.73, backgroundColor: ColorConstant.gray50)))))
                                                                                  ]))),
                                                                          Align(
                                                                              alignment: Alignment.bottomLeft,
                                                                              child: Container(
                                                                                  margin: getMargin(left: 22, bottom: 16),
                                                                                  padding: getPadding(all: 10),
                                                                                  decoration: AppDecoration.outlineGray90011.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                                                                                  child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                    Padding(
                                                                                        padding: getPadding(top: 1),
                                                                                        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                          Text("lbl_sugar".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular10),
                                                                                          Padding(padding: getPadding(left: 5, bottom: 2), child: Text("lbl_39".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular8RedA700)),
                                                                                          CustomImageView(svgPath: ImageConstant.imgArrowdownRedA700, height: getSize(8), width: getSize(8), margin: getMargin(top: 2, bottom: 4))
                                                                                        ])),
                                                                                    Align(
                                                                                        alignment: Alignment.center,
                                                                                        child: Container(
                                                                                            height: getVerticalSize(5),
                                                                                            width: getHorizontalSize(64),
                                                                                            margin: getMargin(top: 1),
                                                                                            child: Stack(alignment: Alignment.centerLeft, children: [
                                                                                              Align(alignment: Alignment.center, child: SizedBox(width: getHorizontalSize(64), child: Divider(height: getVerticalSize(5), thickness: getVerticalSize(5), color: ColorConstant.gray50))),
                                                                                              CustomImageView(imagePath: ImageConstant.imgFill, height: getVerticalSize(5), width: getHorizontalSize(17), alignment: Alignment.centerLeft)
                                                                                            ])))
                                                                                  ])))
                                                                        ])),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 4,
                                                                        top: 8,
                                                                        right:
                                                                            6),
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
                                                                              child: Text("lbl_thu".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsBold12DeeppurpleA100)),
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
                                                                            .centerRight,
                                                                    child: Text(
                                                                        "lbl_100"
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
                                                                    padding: getPadding(
                                                                        left: 1,
                                                                        top:
                                                                            12),
                                                                    child: Text(
                                                                        "lbl_80"
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
                                                                                10),
                                                                    child: Text(
                                                                        "lbl_60"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsBold1062DeeppurpleA100)),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 1,
                                                                        top:
                                                                            12),
                                                                    child: Text(
                                                                        "lbl_40"
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
                                                                    padding: getPadding(
                                                                        left: 2,
                                                                        top:
                                                                            10),
                                                                    child: Text(
                                                                        "lbl_202"
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
                                                                    padding: getPadding(
                                                                        left: 2,
                                                                        top:
                                                                            12),
                                                                    child: Text(
                                                                        "lbl_0"
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
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Container(
                                                margin: getMargin(right: 104),
                                                padding: getPadding(
                                                    left: 10,
                                                    top: 9,
                                                    right: 10,
                                                    bottom: 9),
                                                decoration: AppDecoration
                                                    .outlineGray90011
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder10),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Text("lbl_fibre".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsRegular10),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 4,
                                                                        top: 2),
                                                                child: Text(
                                                                    "lbl_88".tr,
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
                                                                    getSize(8),
                                                                width:
                                                                    getSize(8),
                                                                margin:
                                                                    getMargin(
                                                                        top: 4,
                                                                        bottom:
                                                                            2))
                                                          ]),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      5),
                                                              width:
                                                                  getHorizontalSize(
                                                                      59),
                                                              margin: getMargin(
                                                                  top: 3),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: SizedBox(
                                                                            width: getHorizontalSize(
                                                                                59),
                                                                            child: Divider(
                                                                                height: getVerticalSize(5),
                                                                                thickness: getVerticalSize(5),
                                                                                color: ColorConstant.gray50))),
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgFill,
                                                                        height:
                                                                            getVerticalSize(
                                                                                5),
                                                                        width: getHorizontalSize(
                                                                            42),
                                                                        alignment:
                                                                            Alignment.centerLeft)
                                                                  ])))
                                                    ])))
                                      ])),
                              Container(
                                  margin: getMargin(top: 30, right: 30),
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
                                                "msg_daily_meal_schedule".tr,
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
                                  padding: getPadding(top: 30, right: 30),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 5),
                                            child: Text("lbl_today_meals".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsSemiBold16)),
                                        CustomDropDown(
                                            width: getHorizontalSize(87),
                                            focusNode: FocusNode(),
                                            icon: Container(
                                                margin: getMargin(
                                                    left: 5, right: 10),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowdownWhiteA700)),
                                            hintText: "lbl_breakfast".tr,
                                            items: controller
                                                .mealPlannerModelObj
                                                .value
                                                .dropdownItemList1,
                                            onChanged: (value) {
                                              controller.onSelected1(value);
                                            })
                                      ])),
                              Padding(
                                  padding: getPadding(top: 15, right: 30),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(15));
                                      },
                                      itemCount: controller.mealPlannerModelObj
                                          .value.listcarItemList.length,
                                      itemBuilder: (context, index) {
                                        ListcarItemModel model = controller
                                            .mealPlannerModelObj
                                            .value
                                            .listcarItemList[index];
                                        return ListcarItemWidget(model);
                                      }))),
                              Padding(
                                  padding: getPadding(top: 31),
                                  child: Text("msg_find_something_to".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsSemiBold16)),
                              Container(
                                  height: getVerticalSize(213),
                                  child: Obx(() => ListView.separated(
                                      padding: getPadding(top: 13),
                                      scrollDirection: Axis.horizontal,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(15));
                                      },
                                      itemCount: controller.mealPlannerModelObj
                                          .value.listobjectsItemList.length,
                                      itemBuilder: (context, index) {
                                        ListobjectsItemModel model = controller
                                            .mealPlannerModelObj
                                            .value
                                            .listobjectsItemList[index];
                                        return ListobjectsItemWidget(model);
                                      })))
                            ]))))));
  }

  onTapArrowleft5() {
    Get.back();
  }
}
