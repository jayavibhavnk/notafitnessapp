import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get outlineGray50 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray50,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: ColorConstant.gray50,
      );
  static BoxDecoration get gradientIndigoA100Blue200 => BoxDecoration(
        gradient: LinearGradient(
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
        ),
      );
  static BoxDecoration get gradientIndigoA10075Blue20075 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            1,
            1,
          ),
          end: Alignment(
            -0.24,
            -0.31,
          ),
          colors: [
            ColorConstant.indigoA10075,
            ColorConstant.blue20075,
          ],
        ),
      );
  static BoxDecoration get outlineIndigoA1004c2 => BoxDecoration(
        gradient: LinearGradient(
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
        ),
      );
  static BoxDecoration get outlineGray90011 => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.gray90011,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
      );
  static BoxDecoration get outline => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get gradientIndigoA1006cBlue2006c => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            1,
            1,
          ),
          end: Alignment(
            -0.24,
            -0.31,
          ),
          colors: [
            ColorConstant.indigoA1006c,
            ColorConstant.blue2006c,
          ],
        ),
      );
  static BoxDecoration get outlineIndigoA1004c1 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            1,
            1,
          ),
          end: Alignment(
            -0.24,
            -0.31,
          ),
          colors: [
            ColorConstant.indigoA1006c,
            ColorConstant.blue2006c,
          ],
        ),
      );
  static BoxDecoration get gradientDeeppurpleA10075Pink10075 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            1,
            1,
          ),
          end: Alignment(
            -0.24,
            -0.31,
          ),
          colors: [
            ColorConstant.deepPurpleA10075,
            ColorConstant.pink10075,
          ],
        ),
      );
  static BoxDecoration get outlineGray500 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.gray500,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get txtGradientDeeppurpleA100a2Pink100a2 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            1,
            1,
          ),
          end: Alignment(
            -0.24,
            -0.31,
          ),
          colors: [
            ColorConstant.deepPurpleA100A2,
            ColorConstant.pink100A2,
          ],
        ),
      );
  static BoxDecoration get outlineDeeppurpleA1004c => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            1,
            1,
          ),
          end: Alignment(
            -0.24,
            -0.31,
          ),
          colors: [
            ColorConstant.indigoA10075,
            ColorConstant.blue20075,
          ],
        ),
      );
  static BoxDecoration get outlineGray900111 => BoxDecoration();
  static BoxDecoration get txtGradientDeeppurpleA100IndigoA100 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            1.65,
            0.5,
          ),
          end: Alignment(
            0.12,
            0.5,
          ),
          colors: [
            ColorConstant.deepPurpleA100,
            ColorConstant.indigoA100,
          ],
        ),
      );
  static BoxDecoration get danger => BoxDecoration(
        color: ColorConstant.redA70063,
      );
  static BoxDecoration get fillWhiteA700a2 => BoxDecoration(
        color: ColorConstant.whiteA700A2,
      );
  static BoxDecoration get outlineGray9000c => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.gray9000c,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
      );
  static BoxDecoration get gradientDeeppurpleA100a2Pink100a2 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            1,
            1,
          ),
          end: Alignment(
            -0.24,
            -0.31,
          ),
          colors: [
            ColorConstant.deepPurpleA100A2,
            ColorConstant.pink100A2,
          ],
        ),
      );
  static BoxDecoration get outlineIndigoA1004c => BoxDecoration(
        gradient: LinearGradient(
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
        ),
      );
  static BoxDecoration get gradientDeeppurpleA1006cPink1006c => BoxDecoration(
        gradient: LinearGradient(
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
        ),
      );
  static BoxDecoration get outlineDeeppurpleA1004c1 => BoxDecoration(
        gradient: LinearGradient(
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
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius customBorderTL40 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        40,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        40,
      ),
    ),
  );

  static BorderRadius txtCustomBorderTL99 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        99,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        99,
      ),
    ),
  );

  static BorderRadius txtRoundedBorder17 = BorderRadius.circular(
    getHorizontalSize(
      17,
    ),
  );

  static BorderRadius customBorderBL20 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        20,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        20,
      ),
    ),
  );

  static BorderRadius roundedBorder17 = BorderRadius.circular(
    getHorizontalSize(
      17,
    ),
  );

  static BorderRadius circleBorder34 = BorderRadius.circular(
    getHorizontalSize(
      34,
    ),
  );

  static BorderRadius roundedBorder14 = BorderRadius.circular(
    getHorizontalSize(
      14,
    ),
  );

  static BorderRadius roundedBorder4 = BorderRadius.circular(
    getHorizontalSize(
      4,
    ),
  );

  static BorderRadius circleBorder30 = BorderRadius.circular(
    getHorizontalSize(
      30,
    ),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10,
    ),
  );

  static BorderRadius roundedBorder22 = BorderRadius.circular(
    getHorizontalSize(
      22,
    ),
  );

  static BorderRadius roundedBorder40 = BorderRadius.circular(
    getHorizontalSize(
      40,
    ),
  );

  static BorderRadius customBorderLR100 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        22,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        100,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        22,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        22,
      ),
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
