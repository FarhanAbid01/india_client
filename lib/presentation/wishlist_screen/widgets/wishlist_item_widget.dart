import '../controller/wishlist_controller.dart';
import '../models/wishlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';
import 'package:saturn_flutter/widgets/custom_button.dart';

// ignore: must_be_immutable
class WishlistItemWidget extends StatelessWidget {
  WishlistItemWidget(this.wishlistItemModelObj);

  WishlistItemModel wishlistItemModelObj;

  var controller = Get.find<WishlistController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: getMargin(
          top: 6.0,
          bottom: 6.0,
        ),
        decoration: AppDecoration.outlineBlack9001e.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              margin: getMargin(
                left: 4,
                top: 14,
                bottom: 4,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: getVerticalSize(
                      99.00,
                    ),
                    width: getHorizontalSize(
                      108.00,
                    ),
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: getSize(
                              99.00,
                            ),
                            width: getSize(
                              99.00,
                            ),
                            margin: getMargin(
                              left: 10,
                            ),
                            child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.all(0),
                              color: ColorConstant.red201,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    6.00,
                                  ),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 7,
                                        top: 4,
                                        right: 6,
                                        bottom: 10,
                                      ),
                                      child: CommonImageView(
                                        imagePath:
                                            ImageConstant.imgFoamingfacewa82X84,
                                        height: getVerticalSize(
                                          82.00,
                                        ),
                                        width: getHorizontalSize(
                                          84.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: getVerticalSize(
                              18.00,
                            ),
                            width: getHorizontalSize(
                              39.00,
                            ),
                            margin: getMargin(
                              top: 6,
                              right: 10,
                              bottom: 10,
                            ),
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgTicket,
                                    height: getVerticalSize(
                                      18.00,
                                    ),
                                    width: getHorizontalSize(
                                      39.00,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 10,
                                      top: 3,
                                      right: 6,
                                      bottom: 10,
                                    ),
                                    child: Text(
                                      "lbl_34".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoBold10.copyWith(
                                        letterSpacing: 0.18,
                                        height: 1.00,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 5,
                      right: 10,
                    ),
                    child: Text(
                      "lbl_2_deal".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRegular10WhiteA700.copyWith(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: getMargin(
                left: 9,
                top: 3,
                right: 9,
                bottom: 15,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: getPadding(
                        left: 10,
                      ),
                      child: Text(
                        "lbl_2_deal".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRegular14WhiteA700.copyWith(),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: getHorizontalSize(
                        140.00,
                      ),
                      margin: getMargin(
                        right: 10,
                      ),
                      child: Text(
                        "msg_foaming_face_wa".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRegular12.copyWith(
                          letterSpacing: 0.18,
                          height: 1.17,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: getMargin(
                        top: 12,
                        right: 10,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_rs_699".tr,
                              style: TextStyle(
                                color: ColorConstant.gray600,
                                fontSize: getFontSize(
                                  18,
                                ),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.18,
                                height: 1.11,
                              ),
                            ),
                            TextSpan(
                              text: ' ',
                              style: TextStyle(
                                color: ColorConstant.indigo900,
                                fontSize: getFontSize(
                                  14,
                                ),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.18,
                                height: 1.43,
                              ),
                            ),
                            TextSpan(
                              text: "lbl_rs_999".tr,
                              style: TextStyle(
                                color: ColorConstant.indigo900,
                                fontSize: getFontSize(
                                  12,
                                ),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.18,
                                height: 1.67,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        top: 10,
                        right: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            decoration:
                                AppDecoration.outlineBlack90023.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: getVerticalSize(
                                    2.00,
                                  ),
                                  width: getHorizontalSize(
                                    14.00,
                                  ),
                                  margin: getMargin(
                                    left: 8,
                                    top: 14,
                                    right: 8,
                                    bottom: 14,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.whiteA700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CustomButton(
                            width: 106,
                            text: "lbl_move_to_cart".tr,
                            margin: getMargin(
                              left: 10,
                            ),
                            shape: ButtonShape.RoundedBorder8,
                            padding: ButtonPadding.PaddingAll8,
                            fontStyle: ButtonFontStyle.DMSansBold10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
