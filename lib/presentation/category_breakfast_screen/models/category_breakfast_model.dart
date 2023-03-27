import 'package:get/get.dart';
import 'listbg_item_model.dart';
import 'listcar1_item_model.dart';

class CategoryBreakfastModel {
  RxList<ListbgItemModel> listbgItemList =
      RxList.generate(3, (index) => ListbgItemModel());

  RxList<Listcar1ItemModel> listcar1ItemList =
      RxList.generate(2, (index) => Listcar1ItemModel());
}
