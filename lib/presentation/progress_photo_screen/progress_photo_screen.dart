import 'controller/progress_photo_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/presentation/home_page/home_page.dart';
import 'package:jvgod1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:jvgod1/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:jvgod1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:jvgod1/widgets/app_bar/custom_app_bar.dart';
import 'package:jvgod1/widgets/custom_bottom_bar.dart';
import 'package:jvgod1/widgets/custom_button.dart';
import 'package:jvgod1/widgets/custom_icon_button.dart';

class ProgressPhotoScreen extends GetWidget<ProgressPhotoController> {
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
                    onTap: onTapArrowleft12),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl_progress_photo".tr),
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  margin: getMargin(left: 30, right: 30),
                                  padding: getPadding(all: 15),
                                  decoration: AppDecoration.danger.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder22),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                            height: getSize(60),
                                            width: getSize(60),
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: fs.Svg(ImageConstant
                                                        .imgGroup18),
                                                    fit: BoxFit.cover)),
                                            child: Stack(children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgLightbulbWhiteA700,
                                                  height: getSize(60),
                                                  width: getSize(60),
                                                  alignment: Alignment.center)
                                            ])),
                                        Container(
                                            height: getVerticalSize(43),
                                            width: getHorizontalSize(188),
                                            margin: getMargin(
                                                left: 10, top: 8, bottom: 7),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Text(
                                                          "lbl_reminder".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular12RedA700a2)),
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Text(
                                                          "msg_next_photos_fall"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium14)),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "lbl_reminder"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsRegular12RedA700a2),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 4),
                                                                child: Text(
                                                                    "msg_next_photos_fall"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsMedium14))
                                                          ]))
                                                ])),
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgCloseGray600,
                                            height: getSize(16),
                                            width: getSize(16),
                                            margin:
                                                getMargin(left: 11, bottom: 44))
                                      ])),
                              Container(
                                  margin:
                                      getMargin(left: 30, top: 20, right: 30),
                                  padding: getPadding(
                                      left: 19, top: 25, right: 19, bottom: 25),
                                  decoration: AppDecoration
                                      .gradientIndigoA1006cBlue2006c
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder22),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 1),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      width: getHorizontalSize(
                                                          151),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "msg_track_your_progress2"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .gray900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                12),
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontWeight:
                                                                            FontWeight.w500)),
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_photo"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .indigoA100,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                12),
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontWeight:
                                                                            FontWeight.w600))
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left)),
                                                  CustomButton(
                                                      width:
                                                          getHorizontalSize(95),
                                                      text: "lbl_learn_more".tr,
                                                      margin:
                                                          getMargin(top: 16),
                                                      variant: ButtonVariant
                                                          .GradientIndigoA100Blue200,
                                                      shape: ButtonShape
                                                          .RoundedBorder17,
                                                      padding: ButtonPadding
                                                          .PaddingAll10,
                                                      fontStyle: ButtonFontStyle
                                                          .PoppinsSemiBold10)
                                                ])),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgGroupBlueGray90076x115,
                                            height: getVerticalSize(76),
                                            width: getHorizontalSize(115),
                                            margin: getMargin(
                                                left: 8, top: 5, bottom: 6))
                                      ])),
                              Container(
                                  margin:
                                      getMargin(left: 30, top: 30, right: 30),
                                  padding: getPadding(top: 14, bottom: 14),
                                  decoration: AppDecoration
                                      .gradientIndigoA1006cBlue2006c
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder17),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 5, bottom: 2),
                                            child: Text(
                                                "msg_compare_my_photo".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium14)),
                                        CustomButton(
                                            width: getHorizontalSize(88),
                                            text: "lbl_compare".tr,
                                            margin: getMargin(top: 1),
                                            variant: ButtonVariant
                                                .GradientIndigoA100Blue200,
                                            shape: ButtonShape.RoundedBorder14,
                                            padding: ButtonPadding.PaddingAll5,
                                            fontStyle: ButtonFontStyle
                                                .PoppinsRegular12)
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 30, top: 32, right: 30),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("lbl_gallery".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsSemiBold16),
                                        Padding(
                                            padding: getPadding(bottom: 5),
                                            child: Text("lbl_see_more".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium12Gray500))
                                      ])),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 30, top: 12),
                                      child: Text("lbl_2_june".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtPoppinsRegular12))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      padding: getPadding(left: 30, top: 10),
                                      child: IntrinsicWidth(
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle5834,
                                                height: getSize(100),
                                                width: getSize(100),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(14))),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle5836,
                                                height: getSize(100),
                                                width: getSize(100),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(14)),
                                                margin: getMargin(left: 10)),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle5835,
                                                height: getSize(100),
                                                width: getSize(100),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(14)),
                                                margin: getMargin(left: 10)),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle5836,
                                                height: getSize(100),
                                                width: getSize(100),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(14)),
                                                margin: getMargin(left: 10))
                                          ])))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 30, top: 16),
                                      child: Text("lbl_5_may".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtPoppinsRegular12))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      padding: getPadding(left: 30, top: 8),
                                      child: IntrinsicWidth(
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle5838,
                                                height: getSize(100),
                                                width: getSize(100),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(14)),
                                                margin: getMargin(bottom: 10)),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle5841,
                                                height: getSize(100),
                                                width: getSize(100),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(14)),
                                                margin: getMargin(
                                                    left: 10, bottom: 10)),
                                            Container(
                                                height: getVerticalSize(110),
                                                width: getHorizontalSize(100),
                                                margin: getMargin(left: 10),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgRectangle5839,
                                                          height: getSize(100),
                                                          width: getSize(100),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      14)),
                                                          alignment: Alignment
                                                              .topCenter),
                                                      CustomIconButton(
                                                          height: 60,
                                                          width: 60,
                                                          margin: getMargin(
                                                              right: 5),
                                                          variant: IconButtonVariant
                                                              .OutlineDeeppurpleA1004c,
                                                          shape: IconButtonShape
                                                              .CircleBorder30,
                                                          padding:
                                                              IconButtonPadding
                                                                  .PaddingAll20,
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          onTap: () {
                                                            onTapBtnCamera();
                                                          },
                                                          child: CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgCameraWhiteA700))
                                                    ])),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle5834,
                                                height: getSize(100),
                                                width: getSize(100),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(14)),
                                                margin: getMargin(
                                                    left: 10, bottom: 10))
                                          ])))),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      margin: getMargin(top: 20),
                                      padding:
                                          getPadding(left: 157, right: 157),
                                      decoration:
                                          AppDecoration.outlineGray900111,
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomIconButton(
                                                height: 60,
                                                width: 60,
                                                margin: getMargin(bottom: 30),
                                                variant: IconButtonVariant
                                                    .OutlineIndigoA1004c,
                                                shape: IconButtonShape
                                                    .CircleBorder30,
                                                padding: IconButtonPadding
                                                    .PaddingAll20,
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgSearch))
                                          ])))
                            ])))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

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

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }

  onTapBtnCamera() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  onTapArrowleft12() {
    Get.back();
  }
}
