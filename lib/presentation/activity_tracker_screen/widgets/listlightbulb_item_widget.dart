import '../controller/activity_tracker_controller.dart';
import '../models/listlightbulb_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';

// ignore: must_be_immutable
class ListlightbulbItemWidget extends StatelessWidget {
  ListlightbulbItemWidget(this.listlightbulbItemModelObj);

  ListlightbulbItemModel listlightbulbItemModelObj;

  var controller = Get.find<ActivityTrackerController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 15,
      ),
      decoration: AppDecoration.outlineGray90011.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgLightbulbPinkA100,
            height: getSize(
              50,
            ),
            width: getSize(
              50,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 8,
              top: 8,
              bottom: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    listlightbulbItemModelObj.measurementTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium12,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 3,
                  ),
                  child: Obx(
                    () => Text(
                      listlightbulbItemModelObj.durationTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular10Gray50001,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            svgPath: ImageConstant.imgOverflowmenu,
            height: getSize(
              14,
            ),
            width: getSize(
              14,
            ),
            margin: getMargin(
              bottom: 36,
            ),
          ),
        ],
      ),
    );
  }
}
