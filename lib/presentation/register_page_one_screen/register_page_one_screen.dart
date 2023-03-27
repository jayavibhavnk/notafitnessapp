import 'controller/register_page_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/widgets/custom_button.dart';
import 'package:jvgod1/widgets/custom_checkbox.dart';
import 'package:jvgod1/widgets/custom_icon_button.dart';
import 'package:jvgod1/widgets/custom_text_form_field.dart';
import 'package:jvgod1/domain/facebookauth/facebook_auth_helper.dart';

// ignore_for_file: must_be_immutable
class RegisterPageOneScreen extends GetWidget<RegisterPageOneController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 30, top: 38, right: 30, bottom: 38),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(top: 3),
                              child: Text("lbl_hey_there".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular16)),
                          Padding(
                              padding: getPadding(top: 2),
                              child: Text("msg_create_an_account".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold20)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.labelController,
                              hintText: "lbl_first_name".tr,
                              margin: getMargin(top: 30),
                              prefix: Container(
                                  margin: getMargin(
                                      left: 15, top: 15, right: 10, bottom: 15),
                                  child: CustomImageView(
                                      svgPath: ImageConstant
                                          .imgIconlyLightoutlineProfile)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(48)),
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.labelOneController,
                              hintText: "lbl_last_name".tr,
                              margin: getMargin(top: 15),
                              prefix: Container(
                                  margin: getMargin(
                                      left: 15, top: 15, right: 10, bottom: 15),
                                  child: CustomImageView(
                                      svgPath: ImageConstant
                                          .imgIconlyLightoutlineProfile)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(48)),
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.labelTwoController,
                              hintText: "lbl_email".tr,
                              margin: getMargin(top: 15),
                              textInputType: TextInputType.emailAddress,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 15, top: 15, right: 10, bottom: 15),
                                  child: CustomImageView(
                                      svgPath:
                                          ImageConstant.imgIconlyLightMessage)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(48)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          Obx(() => CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.labelThreeController,
                              hintText: "lbl_password".tr,
                              margin: getMargin(top: 15),
                              padding: TextFormFieldPadding.PaddingT15_1,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 15, top: 15, right: 10, bottom: 15),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(48)),
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword.value =
                                        !controller.isShowPassword.value;
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 15,
                                          right: 15,
                                          bottom: 15),
                                      child: CustomImageView(
                                          svgPath: controller
                                                  .isShowPassword.value
                                              ? ImageConstant.imgArrowleft
                                              : ImageConstant.imgArrowleft))),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(48)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: !controller.isShowPassword.value)),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Obx(() => CustomCheckbox(
                                  alignment: Alignment.centerLeft,
                                  text: "msg_by_continuing_you".tr,
                                  iconSize: getHorizontalSize(16),
                                  value: controller.checkbox.value,
                                  margin: getMargin(top: 10, right: 50),
                                  fontStyle: CheckboxFontStyle.InterRegular10,
                                  onChange: (value) {
                                    controller.checkbox.value = value;
                                  }))),
                          Spacer(),
                          CustomButton(
                              text: "lbl_register".tr,
                              variant: ButtonVariant.GradientIndigoA100Blue200),
                          Padding(
                              padding: getPadding(top: 21),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 7, bottom: 6),
                                        child: SizedBox(
                                            width: getHorizontalSize(141),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant.gray300))),
                                    Text("lbl_or".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular12),
                                    Padding(
                                        padding: getPadding(top: 7, bottom: 6),
                                        child: SizedBox(
                                            width: getHorizontalSize(140),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant.gray300)))
                                  ])),
                          Padding(
                              padding: getPadding(top: 21),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomIconButton(
                                        height: 50,
                                        width: 50,
                                        variant:
                                            IconButtonVariant.OutlineGray300,
                                        shape: IconButtonShape.RoundedBorder14,
                                        padding: IconButtonPadding.PaddingAll15,
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgGroup9684)),
                                    CustomIconButton(
                                        height: 50,
                                        width: 50,
                                        margin: getMargin(left: 30),
                                        variant:
                                            IconButtonVariant.OutlineGray300,
                                        shape: IconButtonShape.RoundedBorder14,
                                        padding: IconButtonPadding.PaddingAll15,
                                        onTap: () {
                                          onTapBtnFacebook();
                                        },
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgFacebook))
                                  ])),
                          Padding(
                              padding: getPadding(top: 31),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_already_have_an2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.gray900,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400)),
                                    TextSpan(
                                        text: " ",
                                        style: TextStyle(
                                            color: ColorConstant.gray900,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500)),
                                    TextSpan(
                                        text: "lbl_login".tr,
                                        style: TextStyle(
                                            color: ColorConstant.deepPurpleA100,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500))
                                  ]),
                                  textAlign: TextAlign.left))
                        ])))));
  }

  onTapBtnFacebook() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
