import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';

class CustomFloatingButton extends StatelessWidget {
  CustomFloatingButton(
      {this.shape,
      this.variant,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.child});

  FloatingButtonShape? shape;

  FloatingButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  Widget? child;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildFabWidget(),
          )
        : _buildFabWidget();
  }

  _buildFabWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: FloatingActionButton(
        onPressed: onTap,
        child: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          decoration: _buildDecoration(),
          child: child,
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      borderRadius: _setBorderRadius(),
      gradient: _setGradient(),
    );
  }

  _setBorderRadius() {
    switch (shape) {
      case FloatingButtonShape.CircleBorder30:
        return BorderRadius.circular(
          getHorizontalSize(
            30.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            25.00,
          ),
        );
    }
  }

  _setGradient() {
    switch (variant) {
      case FloatingButtonVariant.GradientDeeppurpleA100Pink100:
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
}

enum FloatingButtonShape {
  CircleBorder25,
  CircleBorder30,
}

enum FloatingButtonVariant {
  GradientIndigoA100Blue200,
  GradientDeeppurpleA100Pink100,
}
