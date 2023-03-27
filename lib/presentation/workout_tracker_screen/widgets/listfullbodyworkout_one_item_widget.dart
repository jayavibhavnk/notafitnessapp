import '../controller/workout_tracker_controller.dart';
import '../models/listfullbodyworkout_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/widgets/custom_button.dart';

// ignore: must_be_immutable
class ListfullbodyworkoutOneItemWidget extends StatelessWidget {
  ListfullbodyworkoutOneItemWidget(this.listfullbodyworkoutOneItemModelObj);

  ListfullbodyworkoutOneItemModel listfullbodyworkoutOneItemModelObj;

  var controller = Get.find<WorkoutTrackerController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 20,
        top: 12,
        right: 20,
        bottom: 12,
      ),
      decoration: AppDecoration.gradientIndigoA1006cBlue2006c.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder22,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: getPadding(
              top: 9,
              bottom: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    listfullbodyworkoutOneItemModelObj
                        .fullbodyworkoutOneTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium14,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 3,
                  ),
                  child: Obx(
                    () => Text(
                      listfullbodyworkoutOneItemModelObj.priceTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular12,
                    ),
                  ),
                ),
                CustomButton(
                  height: getVerticalSize(
                    35,
                  ),
                  width: getHorizontalSize(
                    94,
                  ),
                  text: "lbl_view_more2".tr,
                  margin: getMargin(
                    top: 15,
                  ),
                  variant: ButtonVariant.FillWhiteA700,
                  shape: ButtonShape.RoundedBorder17,
                  padding: ButtonPadding.PaddingAll10,
                  fontStyle: ButtonFontStyle.PoppinsMedium10,
                ),
              ],
            ),
          ),
          Container(
            height: getVerticalSize(
              105,
            ),
            width: getHorizontalSize(
              92,
            ),
            margin: getMargin(
              top: 1,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: getSize(
                      92,
                    ),
                    width: getSize(
                      92,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA70087,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          46,
                        ),
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgLayer1BlueGray900,
                  height: getVerticalSize(
                    105,
                  ),
                  width: getHorizontalSize(
                    74,
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
