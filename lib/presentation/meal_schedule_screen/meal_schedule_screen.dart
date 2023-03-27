import '../meal_schedule_screen/widgets/listcalories_item_widget.dart';
import '../meal_schedule_screen/widgets/sectionlistbreakfast_item_widget.dart';
import 'controller/meal_schedule_controller.dart';
import 'models/listcalories_item_model.dart';
import 'models/sectionlistbreakfast_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:jvgod1/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:jvgod1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:jvgod1/widgets/app_bar/custom_app_bar.dart';
import 'package:jvgod1/widgets/custom_floating_button.dart';

class MealScheduleScreen extends GetWidget<MealScheduleController> {
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
                    onTap: onTapArrowleft8),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl_meal_schedule".tr),
                actions: [
                  AppbarIconbutton1(
                      svgPath: ImageConstant.imgDetailnavs,
                      margin: getMargin(left: 30, right: 30))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(top: 30),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(right: 104),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowleftGray500,
                                            height: getSize(22),
                                            width: getSize(22),
                                            margin: getMargin(bottom: 1),
                                            onTap: () {
                                              onTapImgArrowleftOne();
                                            }),
                                        Padding(
                                            padding:
                                                getPadding(left: 30, top: 2),
                                            child: Text("lbl_may_2021".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular14Gray500)),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightGray500,
                                            height: getSize(22),
                                            width: getSize(22),
                                            margin:
                                                getMargin(left: 30, bottom: 1))
                                      ])),
                              SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  padding: getPadding(top: 13),
                                  child: IntrinsicWidth(
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
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
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 1),
                                                      child: Text("lbl_wed".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular12Gray600)),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 13),
                                                          child: Text(
                                                              "lbl_12".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
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
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 1),
                                                      child: Text("lbl_thus".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular12Gray600)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 6, top: 13),
                                                      child: Text("lbl_13".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
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
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 1),
                                                          child: Text(
                                                              "lbl_fri".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterRegular12WhiteA700))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 13),
                                                          child: Text(
                                                              "lbl_14".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
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
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 1),
                                                          child: Text(
                                                              "lbl_sat".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterRegular12Gray600))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 13,
                                                              right: 1),
                                                          child: Text(
                                                              "lbl_15".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
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
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 1),
                                                      child: Text("lbl_sun".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular12Gray600)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 13),
                                                      child: Text("lbl_16".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterMedium14Gray600))
                                                ]))
                                      ]))),
                              Padding(
                                  padding: getPadding(top: 29, right: 30),
                                  child: Obx(() => GroupedListView<
                                          SectionlistbreakfastItemModel,
                                          String>(
                                      shrinkWrap: true,
                                      useStickyGroupSeparators: true,
                                      stickyHeaderBackgroundColor:
                                          Colors.transparent,
                                      elements: controller.mealScheduleModelObj
                                          .value.sectionlistbreakfastItemList,
                                      groupBy: (element) =>
                                          element.groupBy!.value,
                                      groupSeparatorBuilder: (String value) {
                                        return Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(value,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsSemiBold16
                                                      .copyWith(
                                                          color: ColorConstant
                                                              .gray900)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 105,
                                                      top: 3,
                                                      bottom: 2),
                                                  child: Text(value,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium12Gray500
                                                          .copyWith(
                                                              color:
                                                                  ColorConstant
                                                                      .gray500)))
                                            ]);
                                      },
                                      itemBuilder: (context, model) {
                                        return SectionlistbreakfastItemWidget(
                                            model);
                                      }))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 60, top: 31),
                                      child: Text(
                                          "msg_today_meal_nutritions".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtPoppinsSemiBold16))),
                              Padding(
                                  padding:
                                      getPadding(left: 60, top: 13, right: 30),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(15));
                                      },
                                      itemCount: controller.mealScheduleModelObj
                                          .value.listcaloriesItemList.length,
                                      itemBuilder: (context, index) {
                                        ListcaloriesItemModel model = controller
                                            .mealScheduleModelObj
                                            .value
                                            .listcaloriesItemList[index];
                                        return ListcaloriesItemWidget(model);
                                      })))
                            ])))),
            floatingActionButton: CustomFloatingButton(
                height: 60,
                width: 60,
                variant: FloatingButtonVariant.GradientDeeppurpleA100Pink100,
                shape: FloatingButtonShape.CircleBorder30,
                child: CustomImageView(
                    svgPath: ImageConstant.imgPlusWhiteA700,
                    height: getVerticalSize(30.0),
                    width: getHorizontalSize(30.0)))));
  }

  onTapImgArrowleftOne() {
    Get.back();
  }

  onTapArrowleft8() {
    Get.back();
  }
}
