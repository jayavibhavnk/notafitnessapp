import '../workout_details_two_screen/widgets/listcaloriesone_item_widget.dart';
import '../workout_details_two_screen/widgets/listone_item_widget.dart';
import 'controller/workout_details_two_controller.dart';
import 'models/listcaloriesone_item_model.dart';
import 'models/listone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:jvgod1/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:jvgod1/widgets/app_bar/custom_app_bar.dart';
import 'package:jvgod1/widgets/custom_button.dart';

class WorkoutDetailsTwoScreen extends GetWidget<WorkoutDetailsTwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(32),
                leadingWidth: 62,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgClose,
                    margin: getMargin(left: 30),
                    onTap: onTapClose),
                actions: [
                  AppbarIconbutton1(
                      svgPath: ImageConstant.imgDetailnavs,
                      margin: getMargin(left: 30, right: 30))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 30, top: 30, right: 30, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgVideosection,
                                  height: getVerticalSize(150),
                                  width: getHorizontalSize(315)),
                              Padding(
                                  padding: getPadding(top: 21),
                                  child: Text("lbl_jumping_jack".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsSemiBold16)),
                              Padding(
                                  padding: getPadding(top: 3),
                                  child: Text("msg_easy_390_calories".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular12)),
                              Padding(
                                  padding: getPadding(top: 31),
                                  child: Text("lbl_descriptions".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsSemiBold16)),
                              Container(
                                  width: getHorizontalSize(309),
                                  margin: getMargin(top: 13, right: 5),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_a_jumping_jack2".tr,
                                            style: TextStyle(
                                                color: ColorConstant.gray600,
                                                fontSize: getFontSize(12),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: "lbl_read_more".tr,
                                            style: TextStyle(
                                                color: ColorConstant.indigoA100,
                                                fontSize: getFontSize(12),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500))
                                      ]),
                                      textAlign: TextAlign.left)),
                              Padding(
                                  padding: getPadding(top: 28),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_how_to_do_it".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsSemiBold16),
                                        Padding(
                                            padding:
                                                getPadding(top: 3, bottom: 2),
                                            child: Text("lbl_4_steps".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium12Gray500))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 12, right: 6),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(4));
                                      },
                                      itemCount: controller
                                          .workoutDetailsTwoModelObj
                                          .value
                                          .listoneItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        ListoneItemModel model = controller
                                            .workoutDetailsTwoModelObj
                                            .value
                                            .listoneItemList[index];
                                        return ListoneItemWidget(model);
                                      }))),
                              Padding(
                                  padding: getPadding(top: 30),
                                  child: Text("msg_custom_repetitions".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsSemiBold16)),
                              Padding(
                                  padding: getPadding(left: 35, top: 13),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgCalories1,
                                        height: getSize(14),
                                        width: getSize(14),
                                        margin: getMargin(top: 6, bottom: 6)),
                                    Padding(
                                        padding: getPadding(
                                            left: 5, top: 6, bottom: 5),
                                        child: Text("msg_450_calories_burn".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular10Gray500)),
                                    Padding(
                                        padding: getPadding(left: 3),
                                        child: Text("lbl_29".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular18Gray50087))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 5),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.gray300)),
                              Padding(
                                  padding:
                                      getPadding(left: 24, top: 3, right: 89),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return Padding(
                                            padding: getPadding(
                                                top: 5.0, bottom: 5.0),
                                            child: SizedBox(
                                                width: getHorizontalSize(315),
                                                child: Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: ColorConstant
                                                        .gray300)));
                                      },
                                      itemCount: controller
                                          .workoutDetailsTwoModelObj
                                          .value
                                          .listcaloriesoneItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        ListcaloriesoneItemModel model =
                                            controller
                                                .workoutDetailsTwoModelObj
                                                .value
                                                .listcaloriesoneItemList[index];
                                        return ListcaloriesoneItemWidget(model);
                                      })))
                            ])))),
            bottomNavigationBar: CustomButton(
                text: "lbl_save".tr,
                margin: getMargin(left: 30, right: 30, bottom: 40))));
  }

  onTapClose() {
    Get.back();
  }
}
