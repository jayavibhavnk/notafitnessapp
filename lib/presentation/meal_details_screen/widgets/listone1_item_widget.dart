import '../controller/meal_details_controller.dart';
import '../models/listone1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore: must_be_immutable
class Listone1ItemWidget extends StatelessWidget {
  Listone1ItemWidget(this.listone1ItemModelObj);

  Listone1ItemModel listone1ItemModelObj;

  var controller = Get.find<MealDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Obx(
                  () => Text(
                    listone1ItemModelObj.oneTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular14DeeppurpleA100,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 14,
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
                        10,
                      ),
                      topRight: Radius.circular(
                        10,
                      ),
                      bottomLeft: Radius.circular(
                        10,
                      ),
                      bottomRight: Radius.circular(
                        10,
                      ),
                    ),
                    child: Container(
                      padding: getPadding(
                        all: 5,
                      ),
                      decoration: AppDecoration.outline.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: getSize(
                              10,
                            ),
                            width: getSize(
                              10,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  5,
                                ),
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
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            CustomImageView(
              imagePath: ImageConstant.imgLine44x1,
              height: getVerticalSize(
                44,
              ),
              width: getHorizontalSize(
                1,
              ),
              margin: getMargin(
                top: 4,
                right: 10,
              ),
            ),
          ],
        ),
        Padding(
          padding: getPadding(
            top: 1,
            bottom: 23,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  listone1ItemModelObj.stepCounterTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsRegular14Gray900,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 4,
                ),
                child: Obx(
                  () => Text(
                    listone1ItemModelObj.preparealloftheOneTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
