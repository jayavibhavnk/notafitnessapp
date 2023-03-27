import 'package:get/get.dart';
import 'sectionlistbreakfast_item_model.dart';
import 'listcalories_item_model.dart';

class MealScheduleModel {
  RxList<SectionlistbreakfastItemModel> sectionlistbreakfastItemList = [
    SectionlistbreakfastItemModel(groupBy: "Breakfast".obs),
    SectionlistbreakfastItemModel(groupBy: "Breakfast".obs),
    SectionlistbreakfastItemModel(groupBy: "Lunch".obs),
    SectionlistbreakfastItemModel(groupBy: "Lunch".obs),
    SectionlistbreakfastItemModel(groupBy: "Snacks".obs),
    SectionlistbreakfastItemModel(groupBy: "Snacks".obs),
    SectionlistbreakfastItemModel(groupBy: "Dinner".obs),
    SectionlistbreakfastItemModel(groupBy: "Dinner".obs)
  ].obs;

  RxList<ListcaloriesItemModel> listcaloriesItemList =
      RxList.generate(4, (index) => ListcaloriesItemModel());
}
