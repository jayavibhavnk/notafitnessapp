import 'package:get/get.dart';
import 'package:jvgod1/data/models/selectionPopupModel/selection_popup_model.dart';

class RegisterPageTwoModel {
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

  DateTime selectedDateofbirthTxt = DateTime.now();

  Rx<String> dateofbirthTxt = Rx("lbl_date_of_birth".tr);
}
