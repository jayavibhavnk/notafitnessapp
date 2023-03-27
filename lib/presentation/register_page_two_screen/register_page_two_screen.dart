import 'controller/register_page_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/widgets/custom_button.dart';
import 'package:jvgod1/widgets/custom_drop_down.dart';
import 'package:jvgod1/widgets/custom_text_form_field.dart';

class RegisterPageTwoScreen extends GetWidget<RegisterPageTwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: getHorizontalSize(395),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgVectorsection,
                          height: getVerticalSize(350),
                          width: getHorizontalSize(375)),
                      Padding(
                          padding: getPadding(left: 52, top: 31),
                          child: Text("msg_let_s_complete_your".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold20)),
                      Padding(
                          padding: getPadding(left: 73, top: 4),
                          child: Text("msg_it_will_help_us".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12)),
                      CustomDropDown(
                          focusNode: FocusNode(),
                          icon: Container(
                              margin: getMargin(left: 30, right: 15),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdownGray500)),
                          hintText: "lbl_choose_gender".tr,
                          margin: getMargin(left: 30, top: 29, right: 50),
                          variant: DropDownVariant.FillGray50,
                          padding: DropDownPadding.PaddingT15,
                          fontStyle: DropDownFontStyle.PoppinsRegular12,
                          items: controller
                              .registerPageTwoModelObj.value.dropdownItemList,
                          prefix: Container(
                              margin: getMargin(
                                  left: 15, top: 15, right: 10, bottom: 15),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgUser)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(48)),
                          onChanged: (value) {
                            controller.onSelected(value);
                          }),
                      GestureDetector(
                          onTap: () {
                            onTapPlaceholder();
                          },
                          child: Container(
                              margin: getMargin(left: 30, top: 15, right: 50),
                              padding: getPadding(
                                  left: 15, top: 14, right: 15, bottom: 14),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder14),
                              child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgCalendar,
                                        height: getSize(18),
                                        width: getSize(18)),
                                    Padding(
                                        padding: getPadding(
                                            left: 10, right: 183, bottom: 1),
                                        child: Obx(() => Text(
                                            controller.registerPageTwoModelObj
                                                .value.dateofbirthTxt.value,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular12Gray500)))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 30, top: 15, right: 50),
                          child: Row(children: [
                            Expanded(
                                child: CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.groupFortyEightController,
                                    hintText: "lbl_your_weight".tr,
                                    variant: TextFormFieldVariant.FillGray50,
                                    prefix: Container(
                                        padding: getPadding(
                                            left: 2,
                                            top: 2,
                                            right: 2,
                                            bottom: 9),
                                        margin: getMargin(
                                            left: 15,
                                            top: 15,
                                            right: 10,
                                            bottom: 15),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: ColorConstant.gray600,
                                                width: getHorizontalSize(1))),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgDashboard)),
                                    prefixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(48)))),
                            CustomButton(
                                width: getSize(48),
                                text: "lbl_kg".tr,
                                margin: getMargin(left: 15),
                                variant:
                                    ButtonVariant.GradientDeeppurpleA100Pink100,
                                shape: ButtonShape.RoundedBorder14,
                                padding: ButtonPadding.PaddingAll15,
                                fontStyle: ButtonFontStyle.PoppinsMedium12)
                          ])),
                      Padding(
                          padding: getPadding(
                              left: 30, top: 15, right: 50, bottom: 5),
                          child: Row(children: [
                            Expanded(
                                child: CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.groupFortyNineController,
                                    hintText: "lbl_your_height".tr,
                                    variant: TextFormFieldVariant.FillGray50,
                                    textInputAction: TextInputAction.done,
                                    prefix: Container(
                                        margin: getMargin(
                                            left: 15,
                                            top: 15,
                                            right: 10,
                                            bottom: 15),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgSort)),
                                    prefixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(48)))),
                            CustomButton(
                                width: getSize(48),
                                text: "lbl_cm".tr,
                                margin: getMargin(left: 15),
                                variant:
                                    ButtonVariant.GradientDeeppurpleA100Pink100,
                                shape: ButtonShape.RoundedBorder14,
                                padding: ButtonPadding.PaddingAll15,
                                fontStyle: ButtonFontStyle.PoppinsMedium12)
                          ]))
                    ])),
            bottomNavigationBar: Container(
                margin: getMargin(left: 40, right: 40, bottom: 40),
                decoration: AppDecoration.outlineIndigoA1004c
                    .copyWith(borderRadius: BorderRadiusStyle.circleBorder30),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(
                              left: 127, top: 17, right: 127, bottom: 17),
                          decoration: AppDecoration.outlineIndigoA1004c
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder30),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_next".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold16),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(top: 2, bottom: 2))
                              ]))
                    ]))));
  }

  Future<void> onTapPlaceholder() async {
    DateTime? dateTime = await showDatePicker(
        context: Get.context!,
        initialDate:
            controller.registerPageTwoModelObj.value.selectedDateofbirthTxt,
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      controller.registerPageTwoModelObj.value.selectedDateofbirthTxt =
          dateTime;
      controller.registerPageTwoModelObj.value.dateofbirthTxt.value =
          dateTime.format(DD_MM_YYYY);
    }
  }
}
