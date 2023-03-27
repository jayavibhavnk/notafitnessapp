import 'package:get/get.dart';
import 'package:jvgod1/data/models/selectionPopupModel/selection_popup_model.dart';
import 'listlightbulb_item_model.dart';

class ActivityTrackerModel {
  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ].obs;

  RxList<ListlightbulbItemModel> listlightbulbItemList =
      RxList.generate(2, (index) => ListlightbulbItemModel());
}
