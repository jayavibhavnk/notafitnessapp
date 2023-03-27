import '../controller/notification_controller.dart';
import '../models/notification_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';

// ignore: must_be_immutable
class NotificationItemWidget extends StatelessWidget {
  NotificationItemWidget(this.notificationItemModelObj);

  NotificationItemModel notificationItemModelObj;

  var controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          svgPath: ImageConstant.imgEllipse,
          height: getSize(
            40,
          ),
          width: getSize(
            40,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 10,
            top: 1,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  notificationItemModelObj.heyitstimeforTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium12,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 5,
                ),
                child: Obx(
                  () => Text(
                    notificationItemModelObj.durationTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular10,
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
            top: 13,
            bottom: 13,
          ),
        ),
      ],
    );
  }
}
