import '../controller/workout_details_one_controller.dart';
import '../models/listrectangle5736_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';

// ignore: must_be_immutable
class Listrectangle5736ItemWidget extends StatelessWidget {
  Listrectangle5736ItemWidget(this.listrectangle5736ItemModelObj);

  Listrectangle5736ItemModel listrectangle5736ItemModelObj;

  var controller = Get.find<WorkoutDetailsOneController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder14,
          ),
          child: Container(
            height: getSize(
              60,
            ),
            width: getSize(
              60,
            ),
            decoration: AppDecoration.gradientIndigoA10075Blue20075.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder14,
            ),
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle5736,
                  height: getSize(
                    60,
                  ),
                  width: getSize(
                    60,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      12,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
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
              Obx(
                () => Text(
                  listrectangle5736ItemModelObj.warmupTxt.value,
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
                    listrectangle5736ItemModelObj.timeTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium12Gray600,
                  ),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          svgPath: ImageConstant.imgClock,
          height: getSize(
            24,
          ),
          width: getSize(
            24,
          ),
          margin: getMargin(
            top: 18,
            bottom: 18,
          ),
        ),
      ],
    );
  }
}
