import '../controller/meal_planner_controller.dart';
import '../models/listcar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';

// ignore: must_be_immutable
class ListcarItemWidget extends StatelessWidget {
  ListcarItemWidget(this.listcarItemModelObj);

  ListcarItemModel listcarItemModelObj;

  var controller = Get.find<MealPlannerController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 15,
        top: 18,
        right: 15,
        bottom: 18,
      ),
      decoration: AppDecoration.outlineGray90011.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgCar,
            height: getSize(
              42,
            ),
            width: getSize(
              42,
            ),
            margin: getMargin(
              left: 9,
              top: 2,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 24,
              top: 2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    listcarItemModelObj.salmonnigiriTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium14,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 2,
                  ),
                  child: Obx(
                    () => Text(
                      listcarItemModelObj.priceTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular12,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: getSize(
              26,
            ),
            width: getSize(
              26,
            ),
            margin: getMargin(
              top: 9,
              bottom: 9,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgBg26x26,
                  height: getSize(
                    26,
                  ),
                  width: getSize(
                    26,
                  ),
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgIconlylightnotification,
                  height: getSize(
                    16,
                  ),
                  width: getSize(
                    16,
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
