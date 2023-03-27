import '../controller/workout_details_two_controller.dart';
import '../models/listcaloriesone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';

// ignore: must_be_immutable
class ListcaloriesoneItemWidget extends StatelessWidget {
  ListcaloriesoneItemWidget(this.listcaloriesoneItemModelObj);

  ListcaloriesoneItemModel listcaloriesoneItemModelObj;

  var controller = Get.find<WorkoutDetailsTwoController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgCalories1,
          height: getSize(
            14,
          ),
          width: getSize(
            14,
          ),
          margin: getMargin(
            top: 10,
            bottom: 11,
          ),
        ),
        Padding(
          padding: getPadding(
            top: 11,
            bottom: 9,
          ),
          child: Text(
            "msg_450_calories_burn".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtPoppinsRegular10Gray500,
          ),
        ),
        Obx(
          () => Text(
            listcaloriesoneItemModelObj.thirtyTxt.value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtPoppinsMedium24,
          ),
        ),
        Padding(
          padding: getPadding(
            top: 6,
            bottom: 5,
          ),
          child: Obx(
            () => Text(
              listcaloriesoneItemModelObj.timesTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsRegular16Gray500,
            ),
          ),
        ),
      ],
    );
  }
}
