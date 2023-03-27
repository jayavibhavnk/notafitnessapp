import 'package:get/get.dart';
import 'listuser_item_model.dart';
import 'listone1_item_model.dart';

class MealDetailsModel {
  RxList<ListuserItemModel> listuserItemList =
      RxList.generate(4, (index) => ListuserItemModel());

  RxList<Listone1ItemModel> listone1ItemList =
      RxList.generate(5, (index) => Listone1ItemModel());
}
