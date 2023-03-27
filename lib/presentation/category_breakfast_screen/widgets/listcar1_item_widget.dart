import '../controller/category_breakfast_controller.dart';
import '../models/listcar1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';

// ignore: must_be_immutable
class Listcar1ItemWidget extends StatelessWidget {
  Listcar1ItemWidget(this.listcar1ItemModelObj);

  Listcar1ItemModel listcar1ItemModelObj;

  var controller = Get.find<CategoryBreakfastController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 15,
        top: 17,
        right: 15,
        bottom: 17,
      ),
      decoration: AppDecoration.outlineGray90011.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgCarPink700,
            height: getVerticalSize(
              45,
            ),
            width: getHorizontalSize(
              46,
            ),
            margin: getMargin(
              top: 1,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 22,
              top: 3,
              bottom: 2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    listcar1ItemModelObj.blueberrypancakOneTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium14,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 1,
                  ),
                  child: Obx(
                    () => Text(
                      listcar1ItemModelObj.priceTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular12,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
            margin: getMargin(
              left: 25,
              top: 11,
              bottom: 11,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgHeartratemodaldot,
                  height: getSize(
                    24,
                  ),
                  width: getSize(
                    24,
                  ),
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgWorkoutbtn,
                  height: getSize(
                    14,
                  ),
                  width: getSize(
                    14,
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
