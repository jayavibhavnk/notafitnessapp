import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        visualDensity: VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
        iconSize: getSize(height ?? 0),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      gradient: _setGradient(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll8:
        return getPadding(
          all: 8,
        );
      case IconButtonPadding.PaddingAll15:
        return getPadding(
          all: 15,
        );
      case IconButtonPadding.PaddingAll5:
        return getPadding(
          all: 5,
        );
      case IconButtonPadding.PaddingAll20:
        return getPadding(
          all: 20,
        );
      default:
        return getPadding(
          all: 11,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.Outline:
        return ColorConstant.whiteA700;
      case IconButtonVariant.OutlineGray60063:
        return ColorConstant.gray30063;
      case IconButtonVariant.OutlineGray30063:
        return ColorConstant.gray30063;
      case IconButtonVariant.OutlineGray300:
      case IconButtonVariant.OutlineIndigoA1004c:
      case IconButtonVariant.GradientIndigoA100Blue200:
      case IconButtonVariant.OutlineDeeppurpleA1004c:
      case IconButtonVariant.GradientDeeppurpleA1006cPink1006c:
      case IconButtonVariant.GradientDeeppurpleA100Pink100:
        return null;
      default:
        return ColorConstant.gray50;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.OutlineGray300:
        return Border.all(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.OutlineGray60063:
        return Border.all(
          color: ColorConstant.gray60063,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.OutlineGray30063:
        return Border.all(
          color: ColorConstant.gray30063,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.FillGray50:
      case IconButtonVariant.OutlineIndigoA1004c:
      case IconButtonVariant.GradientIndigoA100Blue200:
      case IconButtonVariant.OutlineDeeppurpleA1004c:
      case IconButtonVariant.GradientDeeppurpleA1006cPink1006c:
      case IconButtonVariant.GradientDeeppurpleA100Pink100:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.RoundedBorder14:
        return BorderRadius.circular(
          getHorizontalSize(
            14.00,
          ),
        );
      case IconButtonShape.CircleBorder30:
        return BorderRadius.circular(
          getHorizontalSize(
            30.00,
          ),
        );
      case IconButtonShape.CircleBorder24:
        return BorderRadius.circular(
          getHorizontalSize(
            24.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
    }
  }

  _setGradient() {
    switch (variant) {
      case IconButtonVariant.OutlineIndigoA1004c:
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
      case IconButtonVariant.GradientIndigoA100Blue200:
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
      case IconButtonVariant.OutlineDeeppurpleA1004c:
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
      case IconButtonVariant.GradientDeeppurpleA1006cPink1006c:
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
            ColorConstant.deepPurpleA1006c,
            ColorConstant.pink1006c,
          ],
        );
      case IconButtonVariant.GradientDeeppurpleA100Pink100:
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
      case IconButtonVariant.FillGray50:
      case IconButtonVariant.OutlineGray300:
      case IconButtonVariant.Outline:
      case IconButtonVariant.OutlineGray60063:
      case IconButtonVariant.OutlineGray30063:
        return null;
      default:
        return null;
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case IconButtonVariant.OutlineIndigoA1004c:
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
      case IconButtonVariant.OutlineDeeppurpleA1004c:
        return [
          BoxShadow(
            color: ColorConstant.deepPurpleA1004c,
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
      case IconButtonVariant.FillGray50:
      case IconButtonVariant.OutlineGray300:
      case IconButtonVariant.Outline:
      case IconButtonVariant.GradientIndigoA100Blue200:
      case IconButtonVariant.GradientDeeppurpleA1006cPink1006c:
      case IconButtonVariant.GradientDeeppurpleA100Pink100:
      case IconButtonVariant.OutlineGray60063:
      case IconButtonVariant.OutlineGray30063:
        return null;
      default:
        return null;
    }
  }
}

enum IconButtonShape {
  RoundedBorder8,
  RoundedBorder14,
  CircleBorder30,
  CircleBorder24,
}

enum IconButtonPadding {
  PaddingAll8,
  PaddingAll11,
  PaddingAll15,
  PaddingAll5,
  PaddingAll20,
}

enum IconButtonVariant {
  FillGray50,
  OutlineGray300,
  Outline,
  OutlineIndigoA1004c,
  GradientIndigoA100Blue200,
  OutlineDeeppurpleA1004c,
  GradientDeeppurpleA1006cPink1006c,
  GradientDeeppurpleA100Pink100,
  OutlineGray60063,
  OutlineGray30063,
}
