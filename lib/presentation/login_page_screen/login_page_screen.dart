import 'controller/login_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';
import 'package:jvgod1/widgets/custom_button.dart';
import 'package:jvgod1/widgets/custom_icon_button.dart';
import 'package:jvgod1/widgets/custom_text_form_field.dart';
import 'package:jvgod1/domain/facebookauth/facebook_auth_helper.dart';

// ignore_for_file: must_be_immutable
class LoginPageScreen extends GetWidget<LoginPageController> {
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
                              child: Text("lbl_welcome_back".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold20)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.labelController,
                              hintText: "lbl_email".tr,
                              margin: getMargin(top: 30),
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
                              controller: controller.labelOneController,
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
                          Padding(
                              padding: getPadding(top: 11),
                              child: Text("msg_forgot_your_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium12Gray500
                                      .copyWith(
                                          decoration:
                                              TextDecoration.underline))),
                          Spacer(),
                          CustomButton(
                              text: "lbl_login".tr,
                              variant: ButtonVariant.GradientIndigoA100Blue200,
                              padding: ButtonPadding.PaddingT18,
                              prefixWidget: Container(
                                  margin: getMargin(right: 10),
                                  child: CustomImageView(
                                      svgPath: ImageConstant
                                          .imgArrowrightWhiteA700))),
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
                                        text: "msg_don_t_have_an_account2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.gray900,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400)),
                                    TextSpan(
                                        text: "lbl_register".tr,
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
