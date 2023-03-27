import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonChildWidget(),
      ),
    );
  }

  _buildButtonChildWidget() {
    if (checkGradient()) {
      return Container(
        width: width ?? double.maxFinite,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: _buildButtonWithOrWithoutIcon(),
      );
    } else {
      return _buildButtonWithOrWithoutIcon();
    }
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildDecoration() {
    return BoxDecoration(
      borderRadius: _setBorderRadius(),
      gradient: _setGradient(),
      boxShadow: _setBoxShadow(),
    );
  }

  _buildTextButtonStyle() {
    if (checkGradient()) {
      return TextButton.styleFrom(
        padding: EdgeInsets.zero,
      );
    } else {
      return TextButton.styleFrom(
        fixedSize: Size(
          width ?? double.maxFinite,
          height ?? getVerticalSize(40),
        ),
        padding: _setPadding(),
        backgroundColor: _setColor(),
        shadowColor: _setTextButtonShadowColor(),
        shape: RoundedRectangleBorder(
          borderRadius: _setBorderRadius(),
        ),
      );
    }
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingT18:
        return getPadding(
          top: 18,
          right: 18,
          bottom: 18,
        );
      case ButtonPadding.PaddingAll15:
        return getPadding(
          all: 15,
        );
      case ButtonPadding.PaddingAll10:
        return getPadding(
          all: 10,
        );
      case ButtonPadding.PaddingAll5:
        return getPadding(
          all: 5,
        );
      default:
        return getPadding(
          all: 18,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillGray50a2:
        return ColorConstant.gray50A2;
      default:
        return null;
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.GradientIndigoA100Blue200:
      case ButtonVariant.GradientDeeppurpleA100Pink100:
      case ButtonVariant.FillGray50a2:
        return null;
      default:
        return ColorConstant.indigoA1004c;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder14:
        return BorderRadius.circular(
          getHorizontalSize(
            14.00,
          ),
        );
      case ButtonShape.RoundedBorder17:
        return BorderRadius.circular(
          getHorizontalSize(
            17.00,
          ),
        );
      case ButtonShape.CircleBorder24:
        return BorderRadius.circular(
          getHorizontalSize(
            24.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            30.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.PoppinsBold16IndigoA100:
        return TextStyle(
          color: ColorConstant.indigoA100,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.50,
          ),
        );
      case ButtonFontStyle.PoppinsMedium12:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.50,
          ),
        );
      case ButtonFontStyle.PoppinsSemiBold10:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.50,
          ),
        );
      case ButtonFontStyle.PoppinsRegular12:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.50,
          ),
        );
      case ButtonFontStyle.PoppinsMedium10:
        return TextStyle(
          color: ColorConstant.indigoA100,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.50,
          ),
        );
      case ButtonFontStyle.PoppinsRegular12Gray600:
        return TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.50,
          ),
        );
      case ButtonFontStyle.PoppinsSemiBold12:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.50,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.50,
          ),
        );
    }
  }

  checkGradient() {
    switch (variant) {
      case ButtonVariant.GradientIndigoA100Blue200:
      case ButtonVariant.GradientDeeppurpleA100Pink100:
        return true;
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillGray50a2:
        return false;
      default:
        return true;
    }
  }

  _setGradient() {
    switch (variant) {
      case ButtonVariant.GradientIndigoA100Blue200:
        return LinearGradient(
          begin: Alignment(
            1,
            1,
          ),
          end: Alignment(
            -0.24,
            -0.31,
          ),
          colors: [
            ColorConstant.indigoA100,
            ColorConstant.blue200,
          ],
        );
      case ButtonVariant.GradientDeeppurpleA100Pink100:
        return LinearGradient(
          begin: Alignment(
            1,
            1,
          ),
          end: Alignment(
            -0.24,
            -0.31,
          ),
          colors: [
            ColorConstant.deepPurpleA100,
            ColorConstant.pink100,
          ],
        );
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillGray50a2:
        return null;
      default:
        return LinearGradient(
          begin: Alignment(
            1,
            1,
          ),
          end: Alignment(
            -0.24,
            -0.31,
          ),
          colors: [
            ColorConstant.indigoA100,
            ColorConstant.blue200,
          ],
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.GradientIndigoA100Blue200:
      case ButtonVariant.GradientDeeppurpleA100Pink100:
      case ButtonVariant.FillGray50a2:
        return null;
      default:
        return [
          BoxShadow(
            color: ColorConstant.indigoA1004c,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              10,
            ),
          )
        ];
    }
  }
}

enum ButtonShape {
  Square,
  CircleBorder30,
  RoundedBorder14,
  RoundedBorder17,
  CircleBorder24,
}

enum ButtonPadding {
  PaddingAll18,
  PaddingT18,
  PaddingAll15,
  PaddingAll10,
  PaddingAll5,
}

enum ButtonVariant {
  OutlineIndigoA1004c,
  FillWhiteA700,
  GradientIndigoA100Blue200,
  GradientDeeppurpleA100Pink100,
  FillGray50a2,
}

enum ButtonFontStyle {
  PoppinsBold16,
  PoppinsBold16IndigoA100,
  PoppinsMedium12,
  PoppinsSemiBold10,
  PoppinsRegular12,
  PoppinsMedium10,
  PoppinsRegular12Gray600,
  PoppinsSemiBold12,
}
