import '../controller/category_breakfast_controller.dart';
import '../models/listbg_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';

// ignore: must_be_immutable
class ListbgItemWidget extends StatelessWidget {
  ListbgItemWidget(this.listbgItemModelObj);

  ListbgItemModel listbgItemModelObj;

  var controller = Get.find<CategoryBreakfastController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: getMargin(
          right: 15,
        ),
        padding: getPadding(
          left: 20,
          top: 15,
          right: 20,
          bottom: 15,
        ),
        decoration: AppDecoration.gradientDeeppurpleA1006cPink1006c.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder17,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: getVerticalSize(
                41,
              ),
              width: getHorizontalSize(
                40,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgBg,
                    height: getVerticalSize(
                      41,
                    ),
                    width: getHorizontalSize(
                      40,
                    ),
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgCarWhiteA700,
                    height: getVerticalSize(
                      16,
                    ),
                    width: getHorizontalSize(
                      24,
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 9,
                bottom: 1,
              ),
              child: Obx(
                () => Text(
                  listbgItemModelObj.cakeTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsRegular12Gray900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
