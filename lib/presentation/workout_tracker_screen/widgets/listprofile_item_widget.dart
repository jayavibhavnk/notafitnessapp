import '../controller/workout_tracker_controller.dart';
import '../models/listprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';

// ignore: must_be_immutable
class ListprofileItemWidget extends StatelessWidget {
  ListprofileItemWidget(this.listprofileItemModelObj);

  ListprofileItemModel listprofileItemModelObj;

  var controller = Get.find<WorkoutTrackerController>();

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
            svgPath: ImageConstant.imgProfile,
            height: getSize(
              50,
            ),
            width: getSize(
              50,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 10,
              top: 7,
              bottom: 4,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    listprofileItemModelObj.fullbodyworkoutOneTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium12,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 4,
                  ),
                  child: Obx(
                    () => Text(
                      listprofileItemModelObj.durationTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular10Gray500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgWorkouttoggleactive,
            height: getVerticalSize(
              24,
            ),
            width: getHorizontalSize(
              44,
            ),
            margin: getMargin(
              top: 15,
              bottom: 11,
            ),
          ),
        ],
      ),
    );
  }
}
