import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/presentation/home_page/models/home_model.dart';

class HomeController extends GetxController {
  HomeController(this.homeModelObj);

  Rx<HomeModel> homeModelObj;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    homeModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    homeModelObj.value.dropdownItemList.refresh();
  }
}
