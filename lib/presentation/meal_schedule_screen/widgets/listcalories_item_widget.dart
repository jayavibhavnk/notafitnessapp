import '../controller/meal_schedule_controller.dart';
import '../models/listcalories_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';

// ignore: must_be_immutable
class ListcaloriesItemWidget extends StatelessWidget {
  ListcaloriesItemWidget(this.listcaloriesItemModelObj);

  ListcaloriesItemModel listcaloriesItemModelObj;

  var controller = Get.find<MealScheduleController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          left: 15,
          top: 14,
          right: 15,
          bottom: 14,
        ),
        decoration: AppDecoration.outlineGray90011.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder17,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => Text(
                    listcaloriesItemModelObj.caloriesTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium12,
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgArrowdownRed500,
                  height: getSize(
                    18,
                  ),
                  width: getSize(
                    18,
                  ),
                  margin: getMargin(
                    left: 5,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 169,
                    top: 2,
                    bottom: 1,
                  ),
                  child: Obx(
                    () => Text(
                      listcaloriesItemModelObj.kcalCounterTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular10,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: getPadding(
                top: 5,
              ),
              child: Container(
                height: getVerticalSize(
                  10,
                ),
                width: getHorizontalSize(
                  285,
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
                    value: 0.76,
                    backgroundColor: ColorConstant.gray50,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
