import 'controller/take_photo_controller.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/widgets/custom_icon_button.dart';

class TakePhotoScreen extends GetWidget<TakePhotoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 40, top: 20, right: 40, bottom: 20),
                    decoration: AppDecoration.gradientIndigoA100Blue200
                        .copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL40),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgGroupWhiteA700,
                              height: getVerticalSize(488),
                              width: getHorizontalSize(170),
                              margin: getMargin(top: 41)),
                          Container(
                              margin: getMargin(top: 39),
                              padding: getPadding(
                                  left: 40, top: 10, right: 40, bottom: 10),
                              decoration: AppDecoration.fillWhiteA700a2
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder34),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgCutGray600,
                                        height: getSize(24),
                                        width: getSize(24),
                                        margin: getMargin(top: 12, bottom: 12)),
                                    CustomIconButton(
                                        height: 48,
                                        width: 48,
                                        variant: IconButtonVariant
                                            .GradientDeeppurpleA100Pink100,
                                        shape: IconButtonShape.CircleBorder24,
                                        onTap: () {
                                          onTapBtnCamera();
                                        },
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgCameraWhiteA70048x48)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgCameraGray600,
                                        height: getSize(24),
                                        width: getSize(24),
                                        margin: getMargin(top: 12, bottom: 12),
                                        onTap: () {
                                          onTapImgCameraOne();
                                        })
                                  ]))
                        ]))),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 30, right: 29, bottom: 40),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomIconButton(
                      height: 65,
                      width: 67,
                      shape: IconButtonShape.RoundedBorder14,
                      padding: IconButtonPadding.PaddingAll5,
                      child: CustomImageView(
                          svgPath: ImageConstant.imgUserGray50002)),
                  CustomIconButton(
                      height: 65,
                      width: 67,
                      margin: getMargin(left: 19),
                      variant: IconButtonVariant.OutlineGray60063,
                      shape: IconButtonShape.RoundedBorder14,
                      child:
                          CustomImageView(svgPath: ImageConstant.imgAirplane)),
                  CustomIconButton(
                      height: 65,
                      width: 67,
                      margin: getMargin(left: 10),
                      variant: IconButtonVariant.OutlineGray30063,
                      shape: IconButtonShape.RoundedBorder14,
                      child: CustomImageView(
                          svgPath: ImageConstant.imgLightbulbGray300)),
                  CustomIconButton(
                      height: 65,
                      width: 67,
                      margin: getMargin(left: 15),
                      variant: IconButtonVariant.OutlineGray30063,
                      shape: IconButtonShape.RoundedBorder14,
                      child:
                          CustomImageView(svgPath: ImageConstant.imgQuestion))
                ]))));
  }

  onTapBtnCamera() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  onTapImgCameraOne() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
