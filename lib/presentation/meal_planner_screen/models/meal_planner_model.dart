import 'package:get/get.dart';
import 'package:jvgod1/data/models/selectionPopupModel/selection_popup_model.dart';
import 'listcar_item_model.dart';
import 'listobjects_item_model.dart';

class MealPlannerModel {
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

  RxList<SelectionPopupModel> dropdownItemList1 = [
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

  RxList<ListcarItemModel> listcarItemList =
      RxList.generate(2, (index) => ListcarItemModel());

  RxList<ListobjectsItemModel> listobjectsItemList =
      RxList.generate(2, (index) => ListobjectsItemModel());
}
