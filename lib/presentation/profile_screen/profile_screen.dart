import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/presentation/home_page/home_page.dart';
import 'package:jvgod1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:jvgod1/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:jvgod1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:jvgod1/widgets/app_bar/custom_app_bar.dart';
import 'package:jvgod1/widgets/custom_bottom_bar.dart';
import 'package:jvgod1/widgets/custom_button.dart';
import 'package:jvgod1/widgets/custom_icon_button.dart';
import 'package:jvgod1/widgets/custom_switch.dart';

class ProfileScreen extends GetWidget<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            84,
          ),
          leadingWidth: 62,
          leading: AppbarIconbutton1(
            svgPath: ImageConstant.imgBacknavs,
            margin: getMargin(
              left: 30,
              top: 12,
              bottom: 12,
            ),
          ),
          centerTitle: true,
          title: AppbarSubtitle1(
            text: "lbl_profile".tr,
          ),
          actions: [
            AppbarIconbutton(
              svgPath: ImageConstant.imgDetailnavsGray900,
              margin: getMargin(
                left: 30,
                top: 12,
                right: 30,
                bottom: 12,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 30,
                  top: 23,
                  right: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgLatestpic,
                      height: getSize(
                        55,
                      ),
                      width: getSize(
                        55,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 15,
                        top: 4,
                        bottom: 6,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_stefani_wong".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium14,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 5,
                            ),
                            child: Text(
                              "msg_lose_a_fat_program".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomButton(
                      width: getHorizontalSize(
                        83,
                      ),
                      text: "lbl_edit".tr,
                      margin: getMargin(
                        left: 47,
                        top: 10,
                        bottom: 15,
                      ),
                      variant: ButtonVariant.GradientIndigoA100Blue200,
                      shape: ButtonShape.RoundedBorder14,
                      padding: ButtonPadding.PaddingAll5,
                      fontStyle: ButtonFontStyle.PoppinsMedium12,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 30,
                  top: 15,
                  right: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: getPadding(
                        left: 24,
                        top: 8,
                        right: 24,
                        bottom: 8,
                      ),
                      decoration: AppDecoration.outlineGray90011.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder14,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 1,
                            ),
                            child: Text(
                              "lbl_180cm".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium14IndigoA100,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 3,
                              top: 6,
                            ),
                            child: Text(
                              "lbl_height".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        left: 15,
                      ),
                      padding: getPadding(
                        left: 26,
                        top: 8,
                        right: 26,
                        bottom: 8,
                      ),
                      decoration: AppDecoration.outlineGray90011.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder14,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 3,
                              top: 3,
                            ),
                            child: Text(
                              "lbl_65kg".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium14IndigoA100,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 4,
                            ),
                            child: Text(
                              "lbl_weight".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        left: 15,
                      ),
                      padding: getPadding(
                        left: 30,
                        top: 8,
                        right: 30,
                        bottom: 8,
                      ),
                      decoration: AppDecoration.outlineGray90011.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder14,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 3,
                            ),
                            child: Text(
                              "lbl_22yo".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium14IndigoA100,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 5,
                            ),
                            child: Text(
                              "lbl_age".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  540,
                ),
                width: double.maxFinite,
                margin: getMargin(
                  top: 30,
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: getPadding(
                          left: 30,
                          right: 30,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: double.maxFinite,
                              child: Container(
                                padding: getPadding(
                                  left: 15,
                                  top: 19,
                                  right: 15,
                                  bottom: 19,
                                ),
                                decoration:
                                    AppDecoration.outlineGray90011.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder14,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 5,
                                      ),
                                      child: Text(
                                        "lbl_account".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsSemiBold16,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 5,
                                        top: 14,
                                      ),
                                      child: Row(
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgIconlylightprofile,
                                            height: getSize(
                                              20,
                                            ),
                                            width: getSize(
                                              20,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 10,
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              "lbl_personal_data".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtPoppinsRegular12,
                                            ),
                                          ),
                                          Spacer(),
                                          CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightGray600,
                                            height: getSize(
                                              18,
                                            ),
                                            width: getSize(
                                              18,
                                            ),
                                            margin: getMargin(
                                              top: 1,
                                              bottom: 1,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 5,
                                        top: 10,
                                      ),
                                      child: Row(
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgIconlylightdocument,
                                            height: getSize(
                                              20,
                                            ),
                                            width: getSize(
                                              20,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 10,
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              "lbl_achievement".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtPoppinsRegular12,
                                            ),
                                          ),
                                          Spacer(),
                                          CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightGray600,
                                            height: getSize(
                                              18,
                                            ),
                                            width: getSize(
                                              18,
                                            ),
                                            margin: getMargin(
                                              top: 1,
                                              bottom: 1,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 5,
                                        top: 10,
                                      ),
                                      child: Row(
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgIconlylightgraph,
                                            height: getSize(
                                              20,
                                            ),
                                            width: getSize(
                                              20,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 10,
                                              top: 1,
                                            ),
                                            child: Text(
                                              "msg_activity_history".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtPoppinsRegular12,
                                            ),
                                          ),
                                          Spacer(),
                                          CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightGray600,
                                            height: getSize(
                                              18,
                                            ),
                                            width: getSize(
                                              18,
                                            ),
                                            margin: getMargin(
                                              top: 1,
                                              bottom: 1,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 5,
                                        top: 10,
                                      ),
                                      child: Row(
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgIconlylightchart,
                                            height: getSize(
                                              20,
                                            ),
                                            width: getSize(
                                              20,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 10,
                                              top: 2,
                                            ),
                                            child: Text(
                                              "msg_workout_progress".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtPoppinsRegular12,
                                            ),
                                          ),
                                          Spacer(),
                                          CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightGray600,
                                            height: getSize(
                                              18,
                                            ),
                                            width: getSize(
                                              18,
                                            ),
                                            margin: getMargin(
                                              top: 1,
                                              bottom: 1,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: double.maxFinite,
                              child: Container(
                                margin: getMargin(
                                  top: 15,
                                ),
                                padding: getPadding(
                                  left: 15,
                                  top: 19,
                                  right: 15,
                                  bottom: 19,
                                ),
                                decoration:
                                    AppDecoration.outlineGray90011.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder14,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 5,
                                      ),
                                      child: Text(
                                        "lbl_notification".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsSemiBold16,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 5,
                                        top: 15,
                                      ),
                                      child: Row(
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgIconlylightnotification,
                                            height: getSize(
                                              20,
                                            ),
                                            width: getSize(
                                              20,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 10,
                                              top: 1,
                                            ),
                                            child: Text(
                                              "msg_pop_up_notification".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtPoppinsRegular12,
                                            ),
                                          ),
                                          Spacer(),
                                          Obx(
                                            () => CustomSwitch(
                                              margin: getMargin(
                                                top: 1,
                                                bottom: 1,
                                              ),
                                              value: controller
                                                  .isSelectedSwitch.value,
                                              onChanged: (value) {
                                                controller.isSelectedSwitch
                                                    .value = value;
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: double.maxFinite,
                              child: Container(
                                margin: getMargin(
                                  top: 15,
                                ),
                                padding: getPadding(
                                  left: 15,
                                  top: 19,
                                  right: 15,
                                  bottom: 19,
                                ),
                                decoration:
                                    AppDecoration.outlineGray90011.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder14,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 5,
                                      ),
                                      child: Text(
                                        "lbl_other".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsSemiBold16,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 5,
                                        top: 14,
                                      ),
                                      child: Row(
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgIconlylightmessage20x20,
                                            height: getSize(
                                              20,
                                            ),
                                            width: getSize(
                                              20,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 10,
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              "lbl_contact_us".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtPoppinsRegular12,
                                            ),
                                          ),
                                          Spacer(),
                                          CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightGray600,
                                            height: getSize(
                                              18,
                                            ),
                                            width: getSize(
                                              18,
                                            ),
                                            margin: getMargin(
                                              top: 1,
                                              bottom: 1,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 5,
                                        top: 9,
                                      ),
                                      child: Row(
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgIconlylightshield,
                                            height: getSize(
                                              20,
                                            ),
                                            width: getSize(
                                              20,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 10,
                                              top: 2,
                                            ),
                                            child: Text(
                                              "lbl_privacy_policy".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtPoppinsRegular12,
                                            ),
                                          ),
                                          Spacer(),
                                          CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightGray600,
                                            height: getSize(
                                              18,
                                            ),
                                            width: getSize(
                                              18,
                                            ),
                                            margin: getMargin(
                                              top: 2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 5,
                                        top: 10,
                                      ),
                                      child: Row(
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgIconlylightsetting,
                                            height: getSize(
                                              20,
                                            ),
                                            width: getSize(
                                              20,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 10,
                                              top: 2,
                                            ),
                                            child: Text(
                                              "lbl_settings".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtPoppinsRegular12,
                                            ),
                                          ),
                                          Spacer(),
                                          CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightGray600,
                                            height: getSize(
                                              18,
                                            ),
                                            width: getSize(
                                              18,
                                            ),
                                            margin: getMargin(
                                              top: 1,
                                              bottom: 1,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: getPadding(
                          left: 157,
                          right: 157,
                        ),
                        decoration: AppDecoration.outlineGray900111,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomIconButton(
                              height: 60,
                              width: 60,
                              margin: getMargin(
                                bottom: 30,
                              ),
                              variant: IconButtonVariant.OutlineIndigoA1004c,
                              shape: IconButtonShape.CircleBorder30,
                              padding: IconButtonPadding.PaddingAll20,
                              child: CustomImageView(
                                svgPath: ImageConstant.imgSearch,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Homeactive:
        return AppRoutes.homePage;
      case BottomBarEnum.Activity:
        return "/";
      case BottomBarEnum.Camera:
        return "/";
      case BottomBarEnum.Usergray500:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }
}
