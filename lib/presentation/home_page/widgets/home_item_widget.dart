import '../controller/home_controller.dart';
import '../models/home_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/widgets/custom_icon_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  HomeItemWidget(this.homeItemModelObj);

  HomeItemModel homeItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        top: 10,
        bottom: 10,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgDashboardBlueGray900,
            height: getSize(
              50,
            ),
            width: getSize(
              50,
            ),
            margin: getMargin(
              left: 15,
              top: 15,
              bottom: 15,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 10,
              top: 16,
              right: 15,
              bottom: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Obx(
                          () => Text(
                            homeItemModelObj.fullbodyworkoutOneTxt.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium12Gray300,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 1,
                          ),
                          child: Text(
                            "msg_180_calories_burn".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsRegular10Gray50001,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: getPadding(
                        left: 55,
                        top: 11,
                      ),
                      child: OutlineGradientButton(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            1,
                          ),
                          top: getVerticalSize(
                            1,
                          ),
                          right: getHorizontalSize(
                            1,
                          ),
                          bottom: getVerticalSize(
                            1,
                          ),
                        ),
                        strokeWidth: getHorizontalSize(
                          1,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment(
                            1,
                            1,
                          ),
                          end: Alignment(
                            -0.24,
                            -0.31,
                          ),
                          colors: [
                            ColorConstant.deepPurpleA100,
                            ColorConstant.pink100,
                          ],
                        ),
                        corners: Corners(
                          topLeft: Radius.circular(
                            12,
                          ),
                          topRight: Radius.circular(
                            12,
                          ),
                          bottomLeft: Radius.circular(
                            12,
                          ),
                          bottomRight: Radius.circular(
                            12,
                          ),
                        ),
                        child: CustomIconButton(
                          height: 24,
                          width: 24,
                          margin: getMargin(
                            left: 55,
                            top: 11,
                          ),
                          variant: IconButtonVariant.Outline,
                          shape: IconButtonShape.RoundedBorder14,
                          padding: IconButtonPadding.PaddingAll5,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgWorkoutbtn,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: getPadding(
                    top: 8,
                  ),
                  child: Container(
                    height: getVerticalSize(
                      10,
                    ),
                    width: getHorizontalSize(
                      191,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray50,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          5,
                        ),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          5,
                        ),
                      ),
                      child: LinearProgressIndicator(
                        value: 0.33,
                        backgroundColor: ColorConstant.gray50,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
