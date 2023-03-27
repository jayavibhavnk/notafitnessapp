import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color purple200 = fromHex('#cc8fed');

  static Color gray5007a = fromHex('#7aaca3a5');

  static Color indigoA1006c = fromHex('#6c92a3fd');

  static Color gray90011 = fromHex('#111d1617');

  static Color indigoA100 = fromHex('#92a3fd');

  static Color indigoA10075 = fromHex('#7592a3fd');

  static Color gray50 = fromHex('#f7f8f8');

  static Color green500 = fromHex('#41d641');

  static Color gray90019 = fromHex('#191d1617');

  static Color gray9000c = fromHex('#0c1d242a');

  static Color black900 = fromHex('#000000');

  static Color gray50087 = fromHex('#87aca3a5');

  static Color pink100A2 = fromHex('#a2eea4ce');

  static Color gray50001 = fromHex('#a3a8ac');

  static Color deepPurpleA10075 = fromHex('#75c58bf2');

  static Color pink1006c = fromHex('#6ceea4ce');

  static Color deepPurpleA100 = fromHex('#c58bf2');

  static Color gray90063 = fromHex('#631d1517');

  static Color indigoA1004c = fromHex('#4c95adfe');

  static Color redA700 = fromHex('#ff0000');

  static Color pink100 = fromHex('#eea4ce');

  static Color redA70075 = fromHex('#75ff0000');

  static Color gray600 = fromHex('#7b6f72');

  static Color gray30063 = fromHex('#63ddd9da');

  static Color gray500 = fromHex('#aca3a5');

  static Color deepPurpleA1004c = fromHex('#4cc58bf2');

  static Color whiteA700A2 = fromHex('#a2ffffff');

  static Color gray900 = fromHex('#1d1517');

  static Color gray90001 = fromHex('#1c242a');

  static Color deepPurpleA1006c = fromHex('#6cc58bf2');

  static Color gray60063 = fromHex('#637b6f72');

  static Color pink10075 = fromHex('#75eea4ce');

  static Color redA700A2 = fromHex('#a2ff0000');

  static Color gray300 = fromHex('#ddd9da');

  static Color whiteA70087 = fromHex('#87ffffff');

  static Color gray50A2 = fromHex('#a2f7f8f8');

  static Color indigo100 = fromHex('#b3bffd');

  static Color blue20075 = fromHex('#759dceff');

  static Color bluegray400 = fromHex('#888888');

  static Color gray9005e = fromHex('#5e1d1517');

  static Color blue200 = fromHex('#9dceff');

  static Color deepPurpleA100A2 = fromHex('#a2c58bf2');

  static Color blue2006c = fromHex('#6c9dceff');

  static Color whiteA700 = fromHex('#ffffff');

  static Color redA70063 = fromHex('#63ff0000');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
