import '../home_page/widgets/home_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_item_model.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/widgets/app_bar/appbar_image.dart';
import 'package:jvgod1/widgets/app_bar/custom_app_bar.dart';
import 'package:jvgod1/widgets/custom_button.dart';
import 'package:jvgod1/widgets/custom_drop_down.dart';
import 'package:jvgod1/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            94,
          ),
          title: Padding(
            padding: getPadding(
              left: 30,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      right: 46,
                    ),
                    child: Text(
                      "lbl_welcome_back2".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular12Gray500,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      top: 6,
                    ),
                    child: Text(
                      "lbl_stefani_wong".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsBold20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            AppbarImage(
              height: getSize(
                40,
              ),
              width: getSize(
                40,
              ),
              svgPath: ImageConstant.imgFolder,
              margin: getMargin(
                left: 30,
                top: 4,
                right: 30,
                bottom: 9,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                top: 28,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: getMargin(
                      left: 30,
                      right: 30,
                    ),
                    decoration: AppDecoration.outlineIndigoA1004c.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder22,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            315,
                          ),
                          padding: getPadding(
                            all: 20,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                ImageConstant.imgGroup177,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 5,
                                  bottom: 6,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "msg_bmi_body_mass_index".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsSemiBold14,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 6,
                                      ),
                                      child: Text(
                                        "msg_you_have_a_normal".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsRegular12WhiteA700,
                                      ),
                                    ),
                                    CustomButton(
                                      width: getHorizontalSize(
                                        95,
                                      ),
                                      text: "lbl_view_more".tr,
                                      margin: getMargin(
                                        top: 13,
                                      ),
                                      variant: ButtonVariant
                                          .GradientDeeppurpleA100Pink100,
                                      shape: ButtonShape.RoundedBorder17,
                                      padding: ButtonPadding.PaddingAll10,
                                      fontStyle:
                                          ButtonFontStyle.PoppinsSemiBold10,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: getPadding(
                                  left: 21,
                                  top: 20,
                                  right: 21,
                                  bottom: 20,
                                ),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      ImageConstant.imgBannerpie,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        bottom: 47,
                                      ),
                                      child: Text(
                                        "lbl_20_1".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsSemiBold12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 30,
                      top: 30,
                      right: 30,
                    ),
                    padding: getPadding(
                      left: 20,
                      top: 14,
                      right: 20,
                      bottom: 14,
                    ),
                    decoration:
                        AppDecoration.gradientIndigoA1006cBlue2006c.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder14,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 5,
                            bottom: 2,
                          ),
                          child: Text(
                            "lbl_today_target".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium14,
                          ),
                        ),
                        CustomButton(
                          width: getHorizontalSize(
                            68,
                          ),
                          text: "lbl_check".tr,
                          margin: getMargin(
                            top: 1,
                          ),
                          variant: ButtonVariant.GradientIndigoA100Blue200,
                          shape: ButtonShape.RoundedBorder14,
                          padding: ButtonPadding.PaddingAll5,
                          fontStyle: ButtonFontStyle.PoppinsRegular12,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 30,
                        top: 31,
                      ),
                      child: Text(
                        "lbl_activity_status".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsSemiBold16,
                      ),
                    ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: getMargin(
                      top: 13,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder22,
                    ),
                    child: Container(
                      height: getVerticalSize(
                        150,
                      ),
                      width: getHorizontalSize(
                        315,
                      ),
                      padding: getPadding(
                        top: 19,
                        bottom: 19,
                      ),
                      decoration: AppDecoration.outlineIndigoA1004c1.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder22,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: getPadding(
                                left: 20,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_heart_rate".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium12,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 4,
                                    ),
                                    child: Text(
                                      "lbl_78_bpm".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPoppinsSemiBold14IndigoA100,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgHeartrategraph,
                            height: getVerticalSize(
                              61,
                            ),
                            width: getHorizontalSize(
                              315,
                            ),
                            alignment: Alignment.bottomCenter,
                            margin: getMargin(
                              bottom: 8,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: getPadding(
                                top: 14,
                                right: 83,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: getVerticalSize(
                                      30,
                                    ),
                                    width: getHorizontalSize(
                                      73,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgHeartratemodalbg,
                                          height: getVerticalSize(
                                            30,
                                          ),
                                          width: getHorizontalSize(
                                            73,
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                            padding: getPadding(
                                              top: 6,
                                            ),
                                            child: Text(
                                              "lbl_3mins_ago".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular10WhiteA700,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgHeartratemodaldot,
                                    height: getSize(
                                      5,
                                    ),
                                    width: getSize(
                                      5,
                                    ),
                                    margin: getMargin(
                                      top: 5,
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
                  Padding(
                    padding: getPadding(
                      left: 30,
                      top: 16,
                      right: 30,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            150,
                          ),
                          padding: getPadding(
                            left: 8,
                            top: 19,
                            right: 8,
                            bottom: 19,
                          ),
                          decoration: AppDecoration.outlineGray9000c.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder22,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: getVerticalSize(
                                        151,
                                      ),
                                      width: getHorizontalSize(
                                        20,
                                      ),
                                      margin: getMargin(
                                        top: 124,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(
                                            getHorizontalSize(
                                              10,
                                            ),
                                          ),
                                          bottomRight: Radius.circular(
                                            getHorizontalSize(
                                              10,
                                            ),
                                          ),
                                        ),
                                        gradient: LinearGradient(
                                          begin: Alignment(
                                            0.5,
                                            -0.83,
                                          ),
                                          end: Alignment(
                                            0.5,
                                            0.61,
                                          ),
                                          colors: [
                                            ColorConstant.deepPurpleA100,
                                            ColorConstant.indigo100,
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 10,
                                  bottom: 22,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_water_intake".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtPoppinsMedium12Gray90001,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 4,
                                      ),
                                      child: Text(
                                        "lbl_4_liters".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsSemiBold14IndigoA100,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 11,
                                      ),
                                      child: Text(
                                        "msg_real_time_updates".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular10,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 4,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgRealtimeupdatesprogress,
                                            height: getVerticalSize(
                                              160,
                                            ),
                                            width: getHorizontalSize(
                                              10,
                                            ),
                                            margin: getMargin(
                                              top: 2,
                                              bottom: 16,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 8,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "lbl_6am_8am".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular8,
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 2,
                                                  ),
                                                  child: Text(
                                                    "lbl_600ml".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsMedium8,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 11,
                                                  ),
                                                  child: Text(
                                                    "lbl_9am_11am".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular8,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 2,
                                                  ),
                                                  child: Text(
                                                    "lbl_500ml".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsMedium8,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 12,
                                                  ),
                                                  child: Text(
                                                    "lbl_11am_2pm".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular8,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 1,
                                                  ),
                                                  child: Text(
                                                    "lbl_1000ml".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsMedium8,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 12,
                                                  ),
                                                  child: Text(
                                                    "lbl_2pm_4pm".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular8,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 1,
                                                  ),
                                                  child: Text(
                                                    "lbl_700ml".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsMedium8,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 12,
                                                  ),
                                                  child: Text(
                                                    "lbl_4pm_now".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular8,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 1,
                                                  ),
                                                  child: Text(
                                                    "lbl_900ml".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsMedium8,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 15,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: getPadding(
                                  left: 20,
                                  top: 3,
                                  right: 20,
                                  bottom: 3,
                                ),
                                decoration:
                                    AppDecoration.outlineGray90011.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder22,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 18,
                                      ),
                                      child: Text(
                                        "lbl_sleep".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium12,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 5,
                                      ),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "lbl_8".tr,
                                              style: TextStyle(
                                                color: ColorConstant.indigoA100,
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            TextSpan(
                                              text: "lbl_h".tr,
                                              style: TextStyle(
                                                color: ColorConstant.indigoA100,
                                                fontSize: getFontSize(
                                                  10,
                                                ),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            TextSpan(
                                              text: " ",
                                              style: TextStyle(
                                                color: ColorConstant.indigoA100,
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            TextSpan(
                                              text: "lbl_20".tr,
                                              style: TextStyle(
                                                color: ColorConstant.indigoA100,
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            TextSpan(
                                              text: "lbl_m".tr,
                                              style: TextStyle(
                                                color: ColorConstant.indigoA100,
                                                fontSize: getFontSize(
                                                  10,
                                                ),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgSleepgraph,
                                      height: getVerticalSize(
                                        78,
                                      ),
                                      width: getHorizontalSize(
                                        110,
                                      ),
                                      margin: getMargin(
                                        top: 7,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  150,
                                ),
                                margin: getMargin(
                                  top: 15,
                                ),
                                padding: getPadding(
                                  left: 20,
                                  top: 10,
                                  right: 20,
                                  bottom: 10,
                                ),
                                decoration:
                                    AppDecoration.outlineGray90011.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder22,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 13,
                                      ),
                                      child: Text(
                                        "lbl_calories".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium12,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 4,
                                      ),
                                      child: Text(
                                        "lbl_760_kcal".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsSemiBold14IndigoA100,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: getSize(
                                          66,
                                        ),
                                        width: getSize(
                                          66,
                                        ),
                                        margin: getMargin(
                                          top: 6,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                height: getSize(
                                                  66,
                                                ),
                                                width: getSize(
                                                  66,
                                                ),
                                                child:
                                                    CircularProgressIndicator(
                                                  value: 0.5,
                                                  backgroundColor:
                                                      ColorConstant.gray50,
                                                  strokeWidth:
                                                      getHorizontalSize(
                                                    3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                margin: getMargin(
                                                  left: 9,
                                                  right: 9,
                                                ),
                                                padding: getPadding(
                                                  left: 7,
                                                  top: 12,
                                                  right: 7,
                                                  bottom: 12,
                                                ),
                                                decoration: AppDecoration
                                                    .outlineIndigoA1004c
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder22,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: getHorizontalSize(
                                                        32,
                                                      ),
                                                      child: Text(
                                                        "lbl_230kcal_left".tr,
                                                        maxLines: null,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: AppStyle
                                                            .txtPoppinsRegular8WhiteA700,
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
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 30,
                      top: 30,
                      right: 30,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 5,
                          ),
                          child: Text(
                            "msg_workout_progress".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsSemiBold16,
                          ),
                        ),
                        CustomDropDown(
                          width: getHorizontalSize(
                            76,
                          ),
                          focusNode: FocusNode(),
                          icon: Container(
                            margin: getMargin(
                              left: 5,
                              right: 10,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgArrowdownWhiteA700,
                            ),
                          ),
                          hintText: "lbl_weekly".tr,
                          items: controller.homeModelObj.value.dropdownItemList,
                          onChanged: (value) {
                            controller.onSelected(value);
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      181,
                    ),
                    width: getHorizontalSize(
                      315,
                    ),
                    margin: getMargin(
                      top: 5,
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: getPadding(
                              top: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: getVerticalSize(
                                    163,
                                  ),
                                  width: getHorizontalSize(
                                    283,
                                  ),
                                  margin: getMargin(
                                    top: 7,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                          height: getVerticalSize(
                                            137,
                                          ),
                                          width: getHorizontalSize(
                                            283,
                                          ),
                                          padding: getPadding(
                                            top: 11,
                                            bottom: 11,
                                          ),
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: fs.Svg(
                                                ImageConstant.imgGroup9,
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgLinegraph,
                                                height: getVerticalSize(
                                                  110,
                                                ),
                                                width: getHorizontalSize(
                                                  282,
                                                ),
                                                alignment: Alignment.center,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          width: getHorizontalSize(
                                            275,
                                          ),
                                          margin: getMargin(
                                            left: 4,
                                            top: 145,
                                            right: 4,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "lbl_sun".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular12,
                                              ),
                                              Text(
                                                "lbl_mon".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular12,
                                              ),
                                              Text(
                                                "lbl_tue".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular12,
                                              ),
                                              Text(
                                                "lbl_wed".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular12,
                                              ),
                                              Text(
                                                "lbl_thu".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular12,
                                              ),
                                              Text(
                                                "lbl_fri".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtPoppinsBold12,
                                              ),
                                              Text(
                                                "lbl_sat".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular12,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgActivegraph,
                                        height: getVerticalSize(
                                          121,
                                        ),
                                        width: getHorizontalSize(
                                          25,
                                        ),
                                        alignment: Alignment.bottomRight,
                                        margin: getMargin(
                                          right: 39,
                                          bottom: 4,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    bottom: 17,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          "lbl_100".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsRegular1062,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 2,
                                          top: 12,
                                        ),
                                        child: Text(
                                          "lbl_80".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsRegular1062,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 2,
                                          top: 10,
                                        ),
                                        child: Text(
                                          "lbl_60".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsRegular1062,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 11,
                                        ),
                                        child: Text(
                                          "lbl_40".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsBold1062,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 3,
                                          top: 11,
                                        ),
                                        child: Text(
                                          "lbl_202".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsRegular1062,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 3,
                                          top: 12,
                                        ),
                                        child: Text(
                                          "lbl_0".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsRegular1062,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            margin: getMargin(
                              left: 94,
                              right: 91,
                            ),
                            padding: getPadding(
                              all: 10,
                            ),
                            decoration: AppDecoration.outlineGray90011.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "lbl_fri_28_may".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular8,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 33,
                                      ),
                                      child: Text(
                                        "lbl_90".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtPoppinsRegular8Green500,
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgArrowup,
                                      height: getSize(
                                        8,
                                      ),
                                      width: getSize(
                                        8,
                                      ),
                                      margin: getMargin(
                                        top: 1,
                                        bottom: 2,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 3,
                                  ),
                                  child: Text(
                                    "msg_upperbody_workout".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular10,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                  ),
                                  child: Container(
                                    height: getVerticalSize(
                                      5,
                                    ),
                                    width: getHorizontalSize(
                                      110,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray50,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          2,
                                        ),
                                      ),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          2,
                                        ),
                                      ),
                                      child: LinearProgressIndicator(
                                        value: 0.79,
                                        backgroundColor: ColorConstant.gray50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      343,
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
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "lbl_latest_workout".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsSemiBold16,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 2,
                                        bottom: 3,
                                      ),
                                      child: Text(
                                        "lbl_see_more".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtPoppinsMedium12Gray500,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 14,
                                  ),
                                  child: Obx(
                                    () => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                          height: getVerticalSize(
                                            15,
                                          ),
                                        );
                                      },
                                      itemCount: controller.homeModelObj.value
                                          .homeItemList.length,
                                      itemBuilder: (context, index) {
                                        HomeItemModel model = controller
                                            .homeModelObj
                                            .value
                                            .homeItemList[index];
                                        return HomeItemWidget(
                                          model,
                                        );
                                      },
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
                                  variant:
                                      IconButtonVariant.OutlineIndigoA1004c,
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
          ),
        ),
      ),
    );
  }
}
