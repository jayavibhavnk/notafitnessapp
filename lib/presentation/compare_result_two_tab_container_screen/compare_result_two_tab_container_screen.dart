import 'controller/compare_result_two_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/presentation/compare_result_one_page/compare_result_one_page.dart';
import 'package:jvgod1/presentation/compare_result_two_page/compare_result_two_page.dart';
import 'package:jvgod1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:jvgod1/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:jvgod1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:jvgod1/widgets/app_bar/custom_app_bar.dart';

class CompareResultTwoTabContainerScreen
    extends GetWidget<CompareResultTwoTabContainerController> {
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
                    onTap: onTapArrowleft14),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl_result".tr),
                actions: [
                  AppbarIconbutton1(
                      svgPath: ImageConstant.imgShare,
                      margin: getMargin(left: 30, top: 12, right: 12)),
                  AppbarIconbutton1(
                      svgPath: ImageConstant.imgDetailnavs,
                      margin: getMargin(left: 15, top: 12, right: 42))
                ]),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(60),
                          width: getHorizontalSize(315),
                          margin: getMargin(top: 18),
                          decoration: BoxDecoration(
                              color: ColorConstant.gray50,
                              borderRadius:
                                  BorderRadius.circular(getHorizontalSize(30))),
                          child: TabBar(
                              controller: controller.switchingController,
                              labelColor: ColorConstant.whiteA700,
                              labelStyle: TextStyle(
                                  fontSize: getFontSize(16),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500),
                              unselectedLabelColor: ColorConstant.gray500,
                              unselectedLabelStyle: TextStyle(
                                  fontSize: getFontSize(16),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400),
                              indicatorPadding: getPadding(all: 10.0),
                              indicator: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(20)),
                                  gradient: LinearGradient(
                                      begin: Alignment(1, 1),
                                      end: Alignment(-0.24, -0.31),
                                      colors: [
                                        ColorConstant.indigoA100,
                                        ColorConstant.blue200
                                      ])),
                              tabs: [
                                Tab(
                                    child: Text("lbl_photo".tr,
                                        overflow: TextOverflow.ellipsis)),
                                Tab(
                                    child: Text("lbl_statistic".tr,
                                        overflow: TextOverflow.ellipsis))
                              ])),
                      Container(
                          height: getVerticalSize(650),
                          child: TabBarView(
                              controller: controller.switchingController,
                              children: [
                                CompareResultOnePage(),
                                CompareResultTwoPage()
                              ]))
                    ]))));
  }

  onTapArrowleft14() {
    Get.back();
  }
}
