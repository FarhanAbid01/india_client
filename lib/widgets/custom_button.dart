import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.text});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Material(
      color: _setColor(),
      child: InkWell(
        splashColor: Colors.white,
        onTap: onTap,
        child: Container(
          width: getHorizontalSize(width ?? 0),
          margin: margin,
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: Colors.transparent,
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      gradient: _setGradient(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll8:
        return getPadding(
          all: 8,
        );
      default:
        return getPadding(
          all: 15,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillPink101:
        return ColorConstant.pink101;
      case ButtonVariant.FillPink50:
        return ColorConstant.pink50;
      case ButtonVariant.OutlinePink103:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineGray600:
        return ColorConstant.pink50;
      case ButtonVariant.OutlineBlack90023:
      case ButtonVariant.OutlineBlack900231_2:
        return null;
      default:
        return null;
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlinePink103:
        return Border.all(
          color: ColorConstant.pink103,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBlack90023:
      case ButtonVariant.FillPink101:
      case ButtonVariant.FillPink50:
      case ButtonVariant.OutlineBlack900231_2:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder8:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
    }
  }

  _setGradient() {
    switch (variant) {
      case ButtonVariant.OutlineBlack900231_2:
        return LinearGradient(
          begin: Alignment(
            0.03267971963511773,
            0.9545454955536569,
          ),
          end: Alignment(
            -0.1307189739001826,
            -0.23863622402788742,
          ),
          colors: [
            ColorConstant.gray6007f,
            ColorConstant.red2007f,
          ],
        );
      case ButtonVariant.FillPink101:
      case ButtonVariant.FillPink50:
      case ButtonVariant.OutlinePink103:
      case ButtonVariant.OutlineGray600:
        return null;
      default:
        return LinearGradient(
          begin: Alignment(
            0.03267971963511773,
            0.9545454955536569,
          ),
          end: Alignment(
            -0.1307189739001826,
            -0.23863622402788742,
          ),
          colors: [
            ColorConstant.gray600,
            ColorConstant.red200,
          ],
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case ButtonVariant.OutlineBlack900231_2:
        return [
          BoxShadow(
            color: ColorConstant.black90023,
            spreadRadius: getHorizontalSize(
              5.00,
            ),
            blurRadius: getHorizontalSize(
              10.00,
            ),
            offset: Offset(
              0,
              2,
            ),
          )
        ];
      case ButtonVariant.FillPink101:
      case ButtonVariant.FillPink50:
      case ButtonVariant.OutlinePink103:
      case ButtonVariant.OutlineGray600:
        return null;
      default:
        return [
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
          )
        ];
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.RobotoMedium12:
        return TextStyle(
          color: ColorConstant.indigo900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.DMSansBold10:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.RobotoBold14:
        return TextStyle(
          color: ColorConstant.indigo900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.DMSansBold15:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.RobotoRegular14:
        return TextStyle(
          color: ColorConstant.indigo900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder15,
  RoundedBorder8,
}

enum ButtonPadding {
  PaddingAll15,
  PaddingAll8,
}

enum ButtonVariant {
  OutlineBlack90023,
  FillPink101,
  FillPink50,
  OutlinePink103,
  OutlineBlack900231_2,
  OutlineGray600,
}

enum ButtonFontStyle {
  RobotoRomanBold14,
  RobotoMedium12,
  DMSansBold10,
  RobotoBold14,
  DMSansBold15,
  RobotoRegular14,
}
