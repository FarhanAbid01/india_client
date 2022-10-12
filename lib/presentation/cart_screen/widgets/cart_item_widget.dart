import 'dart:developer';

import 'package:saturn_flutter/presentation/homepage_screen/baseview.dart';
import 'package:saturn_flutter/presentation/homepage_screen/models/product_model.dart';

import '../controller/cart_controller.dart';
import '../models/cart_item_model.dart';
import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';
import 'package:saturn_flutter/widgets/custom_button.dart';

// ignore: must_be_immutable
class CartItemWidget extends StatelessWidget {
  CartItemWidget(this.cartItemModelObj);

  ProductModel cartItemModelObj;

  var controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: getMargin(
          top: 10.0,
          bottom: 10.0,
        ),
        decoration: AppDecoration.outlineBlack9001e.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: getVerticalSize(
                110.00,
              ),
              width: getHorizontalSize(
                104.00,
              ),
              margin: getMargin(
                left: 9,
                top: 14,
                bottom: 4,
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: getPadding(
                        top: 10,
                        right: 10,
                      ),
                      child: Text(
                        "lbl_2_deal".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRegular10WhiteA700.copyWith(),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: getSize(
                        100.00,
                      ),
                      width: getSize(
                        100.00,
                      ),
                      margin: getMargin(
                        left: 4,
                        bottom: 10,
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
                                  imagePath: "",
                                  url: cartItemModelObj.node?.images?.edges
                                      ?.first.node?.src ??
                                      "",
                                  height: getVerticalSize(
                                    83.00,
                                  ),
                                  width: getHorizontalSize(
                                    85.00,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: getMargin(
                left: 12,
                top: 3,
                right: 9,
                bottom: 16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: getHorizontalSize(
                        140.00,
                      ),
                      margin: getMargin(
                        right: 31,
                      ),
                      child: Text(
                        "${cartItemModelObj.node?.title}",
                        maxLines: 2,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRegular12.copyWith(
                            letterSpacing: 0.18,
                            height: 1.17,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: getHorizontalSize(
                        169.00,
                      ),
                      margin: getMargin(
                        top: 12,
                        right: 3,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            margin: getMargin(
                              bottom: 1,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                    "Rs.${cartItemModelObj.node?.variants?.edges?[0].node?.price}",
                                    style: TextStyle(
                                      color: ColorConstant.gray600,
                                      fontSize: getFontSize(
                                        15,
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
                                    text:
                                    "${cartItemModelObj.node?.variants?.edges?[0].node?.compareAtPrice}",
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
                          Padding(
                            padding: getPadding(
                              top: 2,
                            ),
                            child: Text(
                              "lbl_34_off".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoMedium12Gray600.copyWith(
                                letterSpacing: 0.18,
                                height: 1.00,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 1,
                        top: 10,
                        right: 70,
                      ),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () async {
                              log('im cliced ${cartItemModelObj.quantity <= 1}');
                              if (cartItemModelObj.quantity <= 1) {
                                // controller.addToCartProducts.removeWhere(
                                //     (element) =>
                                //         element.node?.id ==
                                //         cartItemModelObj.node?.id);

                                await controller.removeToCart(
                                    cartItemModelObj.node?.variants?.edges?[0]
                                        .node?.id ??
                                        '',
                                    controller.addToCartProducts
                                        .where((element) =>
                                    element.node?.id ==
                                        cartItemModelObj.node?.id &&
                                        element.quantity > 0)
                                        .first
                                        .quantity,
                                    controller.cartIDList.value);
                              } else {
                                cartItemModelObj.quantity =
                                    cartItemModelObj.quantity - 1;
                              }
                              Get.forceAppUpdate();
                            },
                            child: Container(
                                height: getVerticalSize(25.00),
                                width: getHorizontalSize(28.00),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: ColorConstant.pink100)),
                                child: Icon(Icons.remove, size: 10)),
                          ),
                          Container(
                              height: getVerticalSize(25.00),
                              width: getHorizontalSize(28.00),
                              decoration: AppDecoration.outlinePink103,
                              child: Center(
                                child: Text("${cartItemModelObj.quantity}",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoBold14Indigo900
                                        .copyWith(letterSpacing: 0.50)),
                              )),
                          GestureDetector(
                            onTap: () {
                              if (cartItemModelObj.quantity < 100) {
                                cartItemModelObj.quantity =
                                    cartItemModelObj.quantity + 1;
                              }
                              Get.forceAppUpdate();
                            },
                            child: Container(
                                height: getVerticalSize(25.00),
                                width: getHorizontalSize(28.00),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: ColorConstant.pink100)),
                                child: Icon(Icons.add, size: 10)),
                          )
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