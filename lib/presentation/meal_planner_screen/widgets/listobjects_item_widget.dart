import '../controller/meal_planner_controller.dart';
import '../models/listobjects_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/widgets/custom_button.dart';

// ignore: must_be_immutable
class ListobjectsItemWidget extends StatelessWidget {
  ListobjectsItemWidget(this.listobjectsItemModelObj);

  ListobjectsItemModel listobjectsItemModelObj;

  var controller = Get.find<MealPlannerController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: getMargin(
          right: 15,
        ),
        padding: getPadding(
          left: 11,
          top: 8,
          right: 11,
          bottom: 8,
        ),
        decoration: AppDecoration.outlineIndigoA1004c1.copyWith(
          borderRadius: BorderRadiusStyle.customBorderLR100,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              svgPath: ImageConstant.imgObjects,
              height: getVerticalSize(
                73,
              ),
              width: getHorizontalSize(
                117,
              ),
              alignment: Alignment.centerRight,
            ),
            Padding(
              padding: getPadding(
                left: 8,
                top: 10,
              ),
              child: Obx(
                () => Text(
                  listobjectsItemModelObj.breakfastTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium14,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 8,
                top: 3,
              ),
              child: Obx(
                () => Text(
                  listobjectsItemModelObj.k120foodsTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsRegular12,
                ),
              ),
            ),
            CustomButton(
              width: getHorizontalSize(
                98,
              ),
              text: "lbl_select".tr,
              margin: getMargin(
                left: 8,
                top: 15,
                bottom: 11,
              ),
              variant: ButtonVariant.GradientIndigoA100Blue200,
              shape: ButtonShape.RoundedBorder14,
              padding: ButtonPadding.PaddingAll5,
              fontStyle: ButtonFontStyle.PoppinsSemiBold12,
            ),
          ],
        ),
      ),
    );
  }
}
