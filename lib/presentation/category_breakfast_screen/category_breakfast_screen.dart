import '../category_breakfast_screen/widgets/listbg_item_widget.dart';
import '../category_breakfast_screen/widgets/listcar1_item_widget.dart';
import 'controller/category_breakfast_controller.dart';
import 'models/listbg_item_model.dart';
import 'models/listcar1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:jvgod1/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:jvgod1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:jvgod1/widgets/app_bar/custom_app_bar.dart';
import 'package:jvgod1/widgets/custom_button.dart';

class CategoryBreakfastScreen extends GetWidget<CategoryBreakfastController> {
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
                    onTap: onTapArrowleft6),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl_breakfast".tr),
                actions: [
                  AppbarIconbutton1(
                      svgPath: ImageConstant.imgDetailnavs,
                      margin: getMargin(left: 30, right: 30))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 30, top: 30),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  margin: getMargin(right: 50),
                                  padding: getPadding(all: 15),
                                  decoration: AppDecoration.outlineGray90011
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder17),
                                  child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgSearchGray500,
                                            height: getSize(20),
                                            width: getSize(20)),
                                        Padding(
                                            padding:
                                                getPadding(left: 10, bottom: 1),
                                            child: Text("lbl_search_pancake".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular12Gray300)),
                                        Padding(
                                            padding: getPadding(left: 128),
                                            child: SizedBox(
                                                height: getVerticalSize(20),
                                                child: VerticalDivider(
                                                    width: getHorizontalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: ColorConstant
                                                        .gray300))),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgIconlylightfilter,
                                            height: getSize(20),
                                            width: getSize(20),
                                            margin: getMargin(left: 9))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 32),
                                  child: Text("lbl_category".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsSemiBold16)),
                              Padding(
                                  padding: getPadding(top: 12),
                                  child: Row(children: [
                                    Container(
                                        padding: getPadding(
                                            left: 20,
                                            top: 15,
                                            right: 20,
                                            bottom: 15),
                                        decoration: AppDecoration
                                            .gradientIndigoA1006cBlue2006c
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder17),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant.imgPic,
                                                  height: getVerticalSize(41),
                                                  width: getHorizontalSize(40)),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 9, bottom: 1),
                                                  child: Text("lbl_salad".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12Gray900))
                                            ])),
                                    Container(
                                        height: getVerticalSize(100),
                                        child: Obx(() => ListView.separated(
                                            padding: getPadding(left: 15),
                                            scrollDirection: Axis.horizontal,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  height: getVerticalSize(15));
                                            },
                                            itemCount: controller
                                                .categoryBreakfastModelObj
                                                .value
                                                .listbgItemList
                                                .length,
                                            itemBuilder: (context, index) {
                                              ListbgItemModel model = controller
                                                  .categoryBreakfastModelObj
                                                  .value
                                                  .listbgItemList[index];
                                              return ListbgItemWidget(model);
                                            })))
                                  ])),
                              Container(
                                  width: getHorizontalSize(147),
                                  margin: getMargin(top: 30),
                                  child: Text("msg_recommendation_for".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsSemiBold16)),
                              SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  padding: getPadding(top: 16, right: 20),
                                  child: IntrinsicWidth(
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                        Container(
                                            padding: getPadding(
                                                left: 31,
                                                top: 20,
                                                right: 31,
                                                bottom: 20),
                                            decoration: AppDecoration
                                                .gradientIndigoA1006cBlue2006c
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder22),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgObjectsWhiteA70080x116,
                                                      height:
                                                          getVerticalSize(80),
                                                      width: getHorizontalSize(
                                                          116),
                                                      margin:
                                                          getMargin(top: 9)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 15),
                                                      child: Text(
                                                          "lbl_honey_pancake"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium14)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 2),
                                                      child: Text(
                                                          "msg_easy_30mins".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular12)),
                                                  CustomButton(
                                                      width: getHorizontalSize(
                                                          110),
                                                      text: "lbl_view".tr,
                                                      margin:
                                                          getMargin(top: 14),
                                                      variant: ButtonVariant
                                                          .GradientIndigoA100Blue200,
                                                      shape: ButtonShape
                                                          .RoundedBorder17,
                                                      padding: ButtonPadding
                                                          .PaddingAll10,
                                                      fontStyle: ButtonFontStyle
                                                          .PoppinsSemiBold12)
                                                ])),
                                        Container(
                                            margin: getMargin(left: 15),
                                            padding: getPadding(all: 30),
                                            decoration: AppDecoration
                                                .gradientDeeppurpleA1006cPink1006c
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder22),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgObjectsWhiteA70077x130,
                                                      height:
                                                          getVerticalSize(77),
                                                      width: getHorizontalSize(
                                                          130)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 16),
                                                      child: Text(
                                                          "lbl_canai_bread".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtPoppinsMedium14)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 4),
                                                      child: Text(
                                                          "msg_easy_20mins".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtPoppinsRegular12)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 23),
                                                      child: Text("lbl_view".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsSemiBold12DeeppurpleA100))
                                                ]))
                                      ]))),
                              Padding(
                                  padding: getPadding(top: 32),
                                  child: Text("lbl_popular".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsSemiBold16)),
                              Padding(
                                  padding: getPadding(top: 12, right: 50),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(15));
                                      },
                                      itemCount: controller
                                          .categoryBreakfastModelObj
                                          .value
                                          .listcar1ItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        Listcar1ItemModel model = controller
                                            .categoryBreakfastModelObj
                                            .value
                                            .listcar1ItemList[index];
                                        return Listcar1ItemWidget(model);
                                      })))
                            ]))))));
  }

  onTapArrowleft6() {
    Get.back();
  }
}
