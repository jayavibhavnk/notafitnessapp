import 'package:get/get.dart';
import 'listrectangle5736_item_model.dart';
import 'listinclinepushups_item_model.dart';

class WorkoutDetailsOneModel {
  RxList<Listrectangle5736ItemModel> listrectangle5736ItemList =
      RxList.generate(6, (index) => Listrectangle5736ItemModel());

  RxList<ListinclinepushupsItemModel> listinclinepushupsItemList =
      RxList.generate(4, (index) => ListinclinepushupsItemModel());
}
