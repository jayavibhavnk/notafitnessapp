import '../controller/meal_schedule_controller.dart';
import '../models/sectionlistbreakfast_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';

// ignore: must_be_immutable
class SectionlistbreakfastItemWidget extends StatelessWidget {
  SectionlistbreakfastItemWidget(this.sectionlistbreakfastItemModelObj);

  SectionlistbreakfastItemModel sectionlistbreakfastItemModelObj;

  var controller = Get.find<MealScheduleController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          svgPath: ImageConstant.imgBgWhiteA700,
          height: getSize(
            60,
          ),
          width: getSize(
            60,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 10,
            top: 10,
            bottom: 9,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_honey_pancake".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium14,
              ),
              Padding(
                padding: getPadding(
                  top: 1,
                ),
                child: Text(
                  "lbl_07_00am".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsRegular12,
                ),
              ),
            ],
          ),
        ),
        CustomImageView(
          svgPath: ImageConstant.imgClock,
          height: getSize(
            24,
          ),
          width: getSize(
            24,
          ),
          margin: getMargin(
            left: 111,
            top: 18,
            bottom: 18,
          ),
        ),
      ],
    );
  }
}
