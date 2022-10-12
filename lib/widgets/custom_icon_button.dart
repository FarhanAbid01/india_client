import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.height,
      this.width,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? height;

  double? width;

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
        constraints: BoxConstraints(
          minHeight: getSize(height ?? 0),
          minWidth: getSize(width ?? 0),
        ),
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
      case IconButtonPadding.PaddingAll13:
        return getPadding(
          all: 13,
        );
      case IconButtonPadding.PaddingAll5:
        return getPadding(
          all: 5,
        );
      default:
        return getPadding(
          all: 9,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillPink100:
        return ColorConstant.pink100;
      case IconButtonVariant.OutlineGray5003f:
        return ColorConstant.whiteA700;
      case IconButtonVariant.FillGray600:
        return ColorConstant.gray600;
      case IconButtonVariant.OutlineBlack900231_2:
        return ColorConstant.pink101;
      case IconButtonVariant.OutlineBlack90023:
      case IconButtonVariant.OutlinePink100:
        return null;
      default:
        return ColorConstant.whiteA70082;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.OutlinePink100:
        return Border.all(
          color: ColorConstant.pink100,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.FillWhiteA70082:
      case IconButtonVariant.OutlineBlack90023:
      case IconButtonVariant.FillPink100:
      case IconButtonVariant.OutlineGray5003f:
      case IconButtonVariant.FillGray600:
      case IconButtonVariant.OutlineBlack900231_2:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.CircleBorder18:
        return BorderRadius.circular(
          getHorizontalSize(
            18.00,
          ),
        );
      case IconButtonShape.RoundedBorder15:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
      case IconButtonShape.CircleBorder12:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            7.00,
          ),
        );
    }
  }

  _setGradient() {
    switch (variant) {
      case IconButtonVariant.OutlineBlack90023:
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
      case IconButtonVariant.FillWhiteA70082:
      case IconButtonVariant.FillPink100:
      case IconButtonVariant.OutlineGray5003f:
      case IconButtonVariant.OutlinePink100:
      case IconButtonVariant.FillGray600:
      case IconButtonVariant.OutlineBlack900231_2:
        return null;
      default:
        return null;
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case IconButtonVariant.OutlineBlack90023:
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
      case IconButtonVariant.OutlineGray5003f:
        return [
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
              5,
            ),
          )
        ];
      case IconButtonVariant.OutlineBlack900231_2:
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
      case IconButtonVariant.FillWhiteA70082:
      case IconButtonVariant.FillPink100:
      case IconButtonVariant.OutlinePink100:
      case IconButtonVariant.FillGray600:
        return null;
      default:
        return null;
    }
  }
}

enum IconButtonShape {
  CircleBorder18,
  RoundedBorder15,
  RoundedBorder7,
  CircleBorder12,
}

enum IconButtonPadding {
  PaddingAll9,
  PaddingAll13,
  PaddingAll5,
}

enum IconButtonVariant {
  FillWhiteA70082,
  OutlineBlack90023,
  FillPink100,
  OutlineGray5003f,
  OutlinePink100,
  FillGray600,
  OutlineBlack900231_2,
}
