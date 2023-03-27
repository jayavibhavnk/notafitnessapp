import 'package:get/get.dart';
import 'listprofile_item_model.dart';
import 'listfullbodyworkout_one_item_model.dart';

class WorkoutTrackerModel {
  RxList<ListprofileItemModel> listprofileItemList =
      RxList.generate(2, (index) => ListprofileItemModel());

  RxList<ListfullbodyworkoutOneItemModel> listfullbodyworkoutOneItemList =
      RxList.generate(3, (index) => ListfullbodyworkoutOneItemModel());
}
