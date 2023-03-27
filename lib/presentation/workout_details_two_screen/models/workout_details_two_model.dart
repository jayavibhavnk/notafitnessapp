import 'package:get/get.dart';
import 'listone_item_model.dart';
import 'listcaloriesone_item_model.dart';

class WorkoutDetailsTwoModel {
  RxList<ListoneItemModel> listoneItemList =
      RxList.generate(4, (index) => ListoneItemModel());

  RxList<ListcaloriesoneItemModel> listcaloriesoneItemList =
      RxList.generate(2, (index) => ListcaloriesoneItemModel());
}
