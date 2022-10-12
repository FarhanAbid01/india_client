import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9007f = fromHex('#7f000000');

  static Color gray5003f = fromHex('#3fa47298');

  static Color red200 = fromHex('#c6839a');

  static Color red201 = fromHex('#deabb4');

  static Color red400 = fromHex('#db4d46');

  static Color black9003f = fromHex('#3f000000');

  static Color red2007f = fromHex('#7fc6839a');

  static Color black9001e = fromHex('#1e000000');

  static Color green400 = fromHex('#75af77');

  static Color red50 = fromHex('#fff3f1');

  static Color whiteA70077 = fromHex('#77ffffff');

  static Color whiteA70033 = fromHex('#33ffffff');

  static Color black90023 = fromHex('#23000000');

  static Color black900 = fromHex('#000000');

  static Color redA700 = fromHex('#ff0f0f');

  static Color pink103 = fromHex('#eaa3c8');

  static Color pink100 = fromHex('#e0b5be');

  static Color pink101 = fromHex('#e0b5bc');

  static Color gray600 = fromHex('#975169');

  static Color gray60066 = fromHex('#66975169');

  static Color gray60000 = fromHex('#00975169');

  static Color gray501 = fromHex('#a47298');

  static Color gray601 = fromHex('#98526a');

  static Color gray400 = fromHex('#c4c4c4');

  static Color pink50 = fromHex('#f9e9ee');

  static Color gray500 = fromHex('#acacad');

  static Color gray800 = fromHex('#474747');

  static Color gray300 = fromHex('#e6e6e6');

  static Color whiteA70060 = fromHex('#60ffffff');

  static Color whiteA70082 = fromHex('#82ffffff');

  static Color bluegray900 = fromHex('#333333');

  static Color gray6007f = fromHex('#7f975169');

  static Color bluegray401 = fromHex('#777d92');

  static Color bluegray400 = fromHex('#888888');

  static Color black90030 = fromHex('#30000000');

  static Color pink1003a = fromHex('#3ae0b5be');

  static Color indigo900 = fromHex('#0f2f5b');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray6003f = fromHex('#3f975168');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
