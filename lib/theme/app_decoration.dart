import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get txtFillRed400 => BoxDecoration(
        color: ColorConstant.red400,
      );
  static BoxDecoration get outlineBlack90030 => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90030,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              -2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack90023 => BoxDecoration(
        color: ColorConstant.pink101,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90023,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray5003f => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.gray5003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillGray600 => BoxDecoration(
        color: ColorConstant.gray600,
      );
  static BoxDecoration get outlineBlack9001e => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9001e,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get gradientGray600Gray60000 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.3866666664140992,
            0.4285714804026719,
          ),
          end: Alignment(
            1.2719998882259043,
            2.7211983869273757,
          ),
          colors: [
            ColorConstant.gray600,
            ColorConstant.gray60000,
          ],
        ),
      );
  static BoxDecoration get fillWhiteA70033 => BoxDecoration(
        color: ColorConstant.whiteA70033,
      );
  static BoxDecoration get fillWhiteA70012 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get outlinePink10012 => BoxDecoration(
        color: ColorConstant.red50,
        border: Border.all(
          color: ColorConstant.pink100,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get txtFillRedA700 => BoxDecoration(
        color: ColorConstant.redA700,
      );
  static BoxDecoration get outlinePink100 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.pink100,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get fillRed201 => BoxDecoration(
        color: ColorConstant.red201,
      );
  static BoxDecoration get outlinePink103 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.pink103,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get outlineBlack9003f => BoxDecoration();
  static BoxDecoration get outlineGray6003f => BoxDecoration();
  static BoxDecoration get fillPink100 => BoxDecoration(
        color: ColorConstant.pink100,
      );
  static BoxDecoration get fillGray60066 => BoxDecoration(
        color: ColorConstant.gray60066,
      );
  static BoxDecoration get outlineBlack9001e12 => BoxDecoration();
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16.00,
    ),
  );

  static BorderRadius customBorderTL20 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        20.00,
      ),
    ),
  );

  static BorderRadius roundedBorder6 = BorderRadius.circular(
    getHorizontalSize(
      6.00,
    ),
  );

  static BorderRadius customBorderTL40 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        40.00,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        40.00,
      ),
    ),
  );

  static BorderRadius roundedBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12.50,
    ),
  );

  static BorderRadius roundedBorder2 = BorderRadius.circular(
    getHorizontalSize(
      2.00,
    ),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10.00,
    ),
  );

  static BorderRadius customBorderBL16 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        16.00,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        16.00,
      ),
    ),
  );

  static BorderRadius txtRoundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10.50,
    ),
  );

  static BorderRadius roundedBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20.00,
    ),
  );

  static BorderRadius txtCircleBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8.00,
    ),
  );
}
