import '../controller/meal_details_controller.dart';
import '../models/listuser_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';

// ignore: must_be_immutable
class ListuserItemWidget extends StatelessWidget {
  ListuserItemWidget(this.listuserItemModelObj);

  ListuserItemModel listuserItemModelObj;

  var controller = Get.find<MealDetailsController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(
          right: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: ColorConstant.gray50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder14,
              ),
              child: Container(
                height: getSize(
                  80,
                ),
                width: getSize(
                  80,
                ),
                padding: getPadding(
                  left: 19,
                  top: 17,
                  right: 19,
                  bottom: 17,
                ),
                decoration: AppDecoration.fillGray50.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder14,
                ),
                child: Stack(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgUserPink800,
                      height: getVerticalSize(
                        46,
                      ),
                      width: getHorizontalSize(
                        41,
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 4,
              ),
              child: Obx(
                () => Text(
                  listuserItemModelObj.wheatflourTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsRegular12Gray900,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 4,
              ),
              child: Obx(
                () => Text(
                  listuserItemModelObj.k100grTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsRegular10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
