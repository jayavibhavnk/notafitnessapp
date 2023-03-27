import 'controller/comparison_controller.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:jvgod1/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:jvgod1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:jvgod1/widgets/app_bar/custom_app_bar.dart';
import 'package:jvgod1/widgets/custom_button.dart';

class ComparisonScreen extends GetWidget<ComparisonController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 62,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleftGray900,
                    margin: getMargin(left: 30, top: 12, bottom: 12),
                    onTap: onTapArrowleft13),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl_comparison".tr),
                actions: [
                  AppbarIconbutton1(
                      svgPath: ImageConstant.imgDetailnavs,
                      margin:
                          getMargin(left: 30, top: 12, right: 30, bottom: 12))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 30, top: 18, right: 30, bottom: 18),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(
                              left: 15, top: 14, right: 15, bottom: 14),
                          decoration: AppDecoration.fillGray50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder17),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCalendar,
                                    height: getSize(18),
                                    width: getSize(18)),
                                Padding(
                                    padding: getPadding(left: 10),
                                    child: Text("lbl_select_month_1".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular12)),
                                Spacer(),
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("lbl_may".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsRegular10Gray500)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowrightGray500,
                                    height: getSize(18),
                                    width: getSize(18),
                                    margin: getMargin(left: 5))
                              ])),
                      Container(
                          margin: getMargin(top: 10, bottom: 5),
                          padding: getPadding(
                              left: 15, top: 14, right: 15, bottom: 14),
                          decoration: AppDecoration.fillGray50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder17),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCalendar,
                                    height: getSize(18),
                                    width: getSize(18)),
                                Padding(
                                    padding: getPadding(left: 10),
                                    child: Text("lbl_select_month_2".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular12)),
                                Spacer(),
                                Padding(
                                    padding: getPadding(top: 2, bottom: 1),
                                    child: Text("lbl_select_month".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsRegular10Gray500)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowrightGray500,
                                    height: getSize(18),
                                    width: getSize(18),
                                    margin: getMargin(left: 5))
                              ]))
                    ])),
            bottomNavigationBar: CustomButton(
                text: "lbl_compare".tr,
                margin: getMargin(left: 31, right: 29, bottom: 40))));
  }

  onTapArrowleft13() {
    Get.back();
  }
}
