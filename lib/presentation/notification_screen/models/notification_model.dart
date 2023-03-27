import 'package:get/get.dart';
import 'notification_item_model.dart';

class NotificationModel {
  RxList<NotificationItemModel> notificationItemList =
      RxList.generate(6, (index) => NotificationItemModel());
}
