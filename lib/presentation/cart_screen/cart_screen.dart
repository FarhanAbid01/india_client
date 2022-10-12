import 'dart:developer';

import 'package:saturn_flutter/heights_widths.dart';
import 'package:saturn_flutter/presentation/add_new_address_screen/all_user_info.dart';
import 'package:saturn_flutter/presentation/add_new_address_screen/controller/add_new_address_controller.dart';
import 'package:saturn_flutter/presentation/add_new_address_screen/delivery_information.dart';
import 'package:saturn_flutter/presentation/add_new_address_screen/models/add_new_address_model.dart';
import 'package:saturn_flutter/presentation/add_new_address_screen/update_address.dart';
import 'package:saturn_flutter/presentation/cart_screen/models/cart_detail_model.dart';
import 'package:saturn_flutter/presentation/change_address_screen/change_address_screen.dart';
import 'package:saturn_flutter/presentation/homepage_screen/baseview.dart';
import 'package:saturn_flutter/presentation/homepage_screen/models/homepage_model.dart';
import 'package:saturn_flutter/presentation/homepage_screen/models/product_model.dart';

import '../add_new_address_screen/add_new_address_screen.dart';
import '../cart_screen/widgets/cart_item_widget.dart';
import 'controller/cart_controller.dart';
import 'models/cart_item_model.dart';
import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';
import 'package:saturn_flutter/widgets/custom_button.dart';
import 'package:saturn_flutter/widgets/custom_icon_button.dart';

class CartScreen extends GetWidget<CartController> {
  bool isHome;

  CartScreen(this.isHome);

  final CartController cartController = Get.find();
  final AddNewAddressController addressController = Get.find();
  CustomerAddress? model;

  @override
  Widget build(BuildContext context) {
    log(("________UD:${addressController.addNewAddressModelObj.value.data?.customerAddressCreate?.customerAddress?.id}"));
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: isHome == true ? true : false,
              title: Text("lbl_my_cart".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style:
                  AppStyle.txtRobotoBold18.copyWith(letterSpacing: 0.50)),
              leading: isHome == true
                  ? SizedBox()
                  : GestureDetector(
                  onTap: () {
                    onTapImgArrowleft();
                  },
                  child: Padding(
                      padding: EdgeInsets.only(left: Get.width * .06),
                      child: Icon(Icons.arrow_back_ios,
                          color: ColorConstant.indigo900, size: 18))),
            ),
            backgroundColor: ColorConstant.whiteA700,
            body: FutureBuilder(
                future:
                addressController.userInfoAddresses(Constant.accessToken),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Text("No Data");
                  } else if (snapshot.connectionState ==
                      ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  } else {
                    var userInfo = snapshot.data as AllUserInfo;
                    log("_______USER INFO:${userInfo}");
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          h2,
                          addressWidget(userInfo),
                          Padding(
                              padding: getPadding(left: 0, top: 9, right: 99),
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(AddNewAddressScreen())?.then((value) {
                                    Get.forceAppUpdate();
                                  });
                                },
                                child: Text("lbl_add_new_address".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoBold14.copyWith(
                                        letterSpacing: 0.18,
                                        height: 1.00,
                                        decoration: TextDecoration.underline)),
                              )),
                          cartController.cartIDList.isEmpty
                              ? Text("Cart is Empty")
                              : FutureBuilder(
                              future: cartController.getCartDetails(
                                  cartController.cartIDList.value),
                              builder: (context, snapshot) {
                                log("_____CART ID:${snapshot.data}");
                                if (!snapshot.hasData) {
                                  return Center(child: Text("Empty"));
                                } else if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  return CircularProgressIndicator(
                                    color: ColorConstant.pink100,
                                  );
                                } else {
                                  // List<CartDetailModel> cart=snapshot.data as List<CartDetailModel>;
                                  var cart =
                                  snapshot.data as CartDetailModel;
                                  log("____ID:${cart.data?.cart?.lines?.edges?.length}");
                                  return Container(
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                          MainAxisAlignment.end,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: SingleChildScrollView(
                                                    padding:
                                                    getPadding(top: 26),
                                                    child: Container(
                                                        child: Column(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .min,
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                  Alignment
                                                                      .center,
                                                                  child: Padding(
                                                                      padding:
                                                                      getPadding(
                                                                          left:
                                                                          24,
                                                                          top:
                                                                          19,
                                                                          right:
                                                                          24),
                                                                      child: Row(
                                                                          mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                          crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .end,
                                                                          mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                          children: [
                                                                            Padding(
                                                                                padding:
                                                                                getPadding(bottom: 1),
                                                                                child: Text("${cartController.addToCartProducts.length} Item", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium18.copyWith(letterSpacing: 0.50))),
                                                                            clearCart(),
                                                                          ]))),
                                                              Align(
                                                                  alignment:
                                                                  Alignment
                                                                      .center,
                                                                  child: Padding(
                                                                      padding:
                                                                      getPadding(
                                                                          left:
                                                                          24,
                                                                          top:
                                                                          17,
                                                                          right:
                                                                          24),
                                                                      child: Obx(() => ListView
                                                                          .builder(
                                                                          physics:
                                                                          NeverScrollableScrollPhysics(),
                                                                          shrinkWrap:
                                                                          true,
                                                                          itemCount: cartController
                                                                              .addToCartProducts
                                                                              .length,
                                                                          itemBuilder:
                                                                              (context, index) {
                                                                            ProductModel
                                                                            model =
                                                                            cartController.addToCartProducts[index];
                                                                            return CartItemWidget(model);
                                                                          })))),
                                                              copunCard(),
                                                              Align(
                                                                  alignment:
                                                                  Alignment
                                                                      .center,
                                                                  child: Container(
                                                                      width: double
                                                                          .infinity,
                                                                      margin: getMargin(
                                                                          left: 24,
                                                                          top: 22,
                                                                          right:
                                                                          24),
                                                                      decoration: BoxDecoration(
                                                                          borderRadius:
                                                                          BorderRadius.circular(getHorizontalSize(
                                                                              5.00))),
                                                                      child: Column(
                                                                          mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                          crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                          mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                          children: [
                                                                            Align(
                                                                                alignment:
                                                                                Alignment.center,
                                                                                child: Padding(
                                                                                    padding: getPadding(left: 6, top: 4, right: 5),
                                                                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                      Padding(padding: getPadding(bottom: 1), child: Text("lbl_subtotal".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular14Gray500.copyWith(letterSpacing: 0.50))),
                                                                                      Padding(padding: getPadding(top: 1), child: Text("${cart.data?.cart?.cost?.subtotalAmount?.amount}", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium14.copyWith(letterSpacing: 0.50)))
                                                                                    ]))),
                                                                            Align(
                                                                                alignment:
                                                                                Alignment.center,
                                                                                child: Padding(
                                                                                    padding: getPadding(left: 6, top: 19, right: 5),
                                                                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                      Padding(padding: getPadding(top: 1), child: Text("lbl_shipping".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular14Gray500.copyWith(letterSpacing: 0.50))),
                                                                                      Padding(padding: getPadding(bottom: 1), child: Text("N/A", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium14.copyWith(letterSpacing: 0.50)))
                                                                                    ]))),
                                                                            Align(
                                                                                alignment:
                                                                                Alignment.center,
                                                                                child: Padding(
                                                                                    padding: getPadding(left: 6, top: 19, right: 5),
                                                                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                      Padding(padding: getPadding(top: 1), child: Text("lbl_discount".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular14Gray500.copyWith(letterSpacing: 0.50))),
                                                                                      Padding(padding: getPadding(bottom: 1), child: Text("N/A".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium14Green400.copyWith(letterSpacing: 0.50)))
                                                                                    ]))),
                                                                            Container(
                                                                                height:
                                                                                getVerticalSize(1.00),
                                                                                width: getHorizontalSize(311.00),
                                                                                margin: getMargin(top: 14),
                                                                                decoration: BoxDecoration(color: ColorConstant.pink100)),
                                                                            Align(
                                                                                alignment:
                                                                                Alignment.center,
                                                                                child: Padding(
                                                                                    padding: getPadding(left: 6, top: 21, right: 5, bottom: 4),
                                                                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                      Padding(padding: getPadding(bottom: 1), child: Text("lbl_total_price".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoBold14Indigo900.copyWith(letterSpacing: 0.50))),
                                                                                      Padding(padding: getPadding(top: 1), child: Text("${cart.data?.cart?.cost?.totalAmount?.amount}", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoBold14Indigo900.copyWith(letterSpacing: 0.50)))
                                                                                    ])))
                                                                          ]))),
                                                              Padding(
                                                                  padding:
                                                                  getPadding(
                                                                      left: 43,
                                                                      right:
                                                                      43),
                                                                  child: Text(
                                                                      "lbl_2_deal"
                                                                          .tr,
                                                                      overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                      textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                      style: AppStyle
                                                                          .txtRobotoRegular10WhiteA700
                                                                          .copyWith())),
                                                              CustomButton(
                                                                  onTap: () {
                                                                    Get.to(DeliveryInformationScreen(
                                                                        userInfo,
                                                                        cart))
                                                                        ?.then(
                                                                            (value) =>
                                                                        {
                                                                          Get.forceAppUpdate()
                                                                        });
                                                                  },
                                                                  width: 326,
                                                                  text:
                                                                  "lbl_checkout"
                                                                      .tr,
                                                                  margin: getMargin(
                                                                      left: 24,
                                                                      top: 152,
                                                                      right: 24),
                                                                  fontStyle:
                                                                  ButtonFontStyle
                                                                      .DMSansBold15,
                                                                  alignment:
                                                                  Alignment
                                                                      .center),
                                                              Align(
                                                                  alignment:
                                                                  Alignment
                                                                      .center,
                                                                  child: Padding(
                                                                      padding:
                                                                      getPadding(
                                                                          left:
                                                                          24,
                                                                          top:
                                                                          28,
                                                                          right:
                                                                          24),
                                                                      child: Row(
                                                                          mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                          crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                          mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                          children: [
                                                                            Text(
                                                                                "lbl_wishlist"
                                                                                    .tr,
                                                                                overflow:
                                                                                TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtRobotoMedium18.copyWith(letterSpacing: 0.18, height: 1.00)),
                                                                            Padding(
                                                                                padding:
                                                                                getPadding(top: 3, bottom: 1),
                                                                                child: Text("lbl_see_all".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoBold14.copyWith(letterSpacing: 0.18, height: 1.00)))
                                                                          ]))),
                                                              Container(
                                                                  height:
                                                                  getVerticalSize(
                                                                      211.00),
                                                                  width:
                                                                  getHorizontalSize(
                                                                      164.00),
                                                                  margin: getMargin(
                                                                      left: 24,
                                                                      top: 18,
                                                                      right: 24),
                                                                  child: Stack(
                                                                      alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                      children: [
                                                                        Align(
                                                                            alignment:
                                                                            Alignment.center,
                                                                            child: Container(
                                                                                margin: getMargin(left: 4),
                                                                                decoration: AppDecoration.outlineGray6003f,
                                                                                child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                  Align(
                                                                                      alignment: Alignment.centerLeft,
                                                                                      child: Container(
                                                                                          width: double.infinity,
                                                                                          decoration: AppDecoration.fillPink100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
                                                                                          child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [
                                                                                            Align(
                                                                                                alignment: Alignment.centerRight,
                                                                                                child: Padding(
                                                                                                    padding: getPadding(left: 12, top: 10, right: 12),
                                                                                                    child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [
                                                                                                      CommonImageView(imagePath: ImageConstant.imgWhiteandblack, height: getVerticalSize(119.00), width: getHorizontalSize(85.00)),
                                                                                                      CustomIconButton(height: 24, width: 24, margin: getMargin(left: 1, top: 1, bottom: 94), variant: IconButtonVariant.FillGray600, shape: IconButtonShape.CircleBorder12, padding: IconButtonPadding.PaddingAll5, child: CommonImageView(svgPath: ImageConstant.imgGrid24X24))
                                                                                                    ]))),
                                                                                            Align(
                                                                                                alignment: Alignment.centerLeft,
                                                                                                child: Container(
                                                                                                    width: double.infinity,
                                                                                                    margin: getMargin(top: 6),
                                                                                                    decoration: AppDecoration.fillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.customBorderBL16),
                                                                                                    child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                                      Container(width: getHorizontalSize(117.00), margin: getMargin(left: 13, top: 11, right: 13), child: Text("msg_foaming_face_wa".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular10Indigo900.copyWith(letterSpacing: 0.18, height: 1.40))),
                                                                                                      Container(
                                                                                                          margin: getMargin(left: 13, top: 8, right: 13, bottom: 16),
                                                                                                          child: RichText(
                                                                                                              text: TextSpan(children: [
                                                                                                                TextSpan(text: "lbl_rs_699".tr, style: TextStyle(color: ColorConstant.gray600, fontSize: getFontSize(14), fontFamily: 'Roboto', fontWeight: FontWeight.w500, letterSpacing: 0.18, height: 0.86)),
                                                                                                                TextSpan(text: ' ', style: TextStyle(color: ColorConstant.indigo900, fontSize: getFontSize(14), fontFamily: 'Roboto', fontWeight: FontWeight.w400, letterSpacing: 0.18, height: 0.86)),
                                                                                                                TextSpan(text: "lbl_rs_999".tr, style: TextStyle(color: ColorConstant.indigo900, fontSize: getFontSize(10), fontFamily: 'Roboto', fontWeight: FontWeight.w400, letterSpacing: 0.18, height: 1.20, decoration: TextDecoration.lineThrough))
                                                                                                              ]),
                                                                                                              textAlign: TextAlign.left))
                                                                                                    ])))
                                                                                          ])))
                                                                                ]))),
                                                                        Align(
                                                                            alignment:
                                                                            Alignment.topLeft,
                                                                            child: Container(
                                                                                height: getVerticalSize(18.00),
                                                                                width: getHorizontalSize(39.00),
                                                                                margin: getMargin(top: 15, right: 10, bottom: 15),
                                                                                child: Stack(alignment: Alignment.topRight, children: [
                                                                                  Align(alignment: Alignment.centerLeft, child: CommonImageView(svgPath: ImageConstant.imgTicket, height: getVerticalSize(18.00), width: getHorizontalSize(39.00))),
                                                                                  Align(alignment: Alignment.topRight, child: Padding(padding: getPadding(left: 10, top: 3, right: 6, bottom: 10), child: Text("lbl_34".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoBold10.copyWith(letterSpacing: 0.18, height: 1.00))))
                                                                                ])))
                                                                      ])),
                                                            ]))))
                                          ]));
                                }
                              }),
                        ],
                      ),
                    );
                  }
                })));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  Widget clearCart() {
    return GestureDetector(
      onTap: () {
        cartController.addToCartProducts.clear();
        log("____CLAER:${cartController.addToCartProducts.length}");
        Get.to(BaseView());
      },
      child: Padding(
          padding: getPadding(top: 5),
          child: Text("lbl_clear_cart".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoBold14
                  .copyWith(letterSpacing: 0.18, height: 1.00))),
    );
  }

  Widget addressWidget(AllUserInfo userInfo) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: getPadding(left: 24, right: 24),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomIconButton(
                      height: 44,
                      width: 44,
                      margin: getMargin(top: 2, bottom: 8),
                      variant: IconButtonVariant.OutlinePink100,
                      padding: IconButtonPadding.PaddingAll13,
                      child: CommonImageView(
                          svgPath: ImageConstant.imgLocation44X44)),
                  Container(
                      margin: getMargin(left: 20),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                width: getHorizontalSize(238.00),
                                child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                          padding: getPadding(bottom: 6),
                                          child: Text(
                                              "${userInfo.data?.customer?.defaultAddress?.firstName}",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoBold14Indigo900
                                                  .copyWith(
                                                  letterSpacing: 0.50))),
                                      GestureDetector(
                                        onTap: () {
                                          Get.to(UpdateAddress(
                                            updateModel: null,
                                            defaultAddress: userInfo
                                                .data?.customer?.defaultAddress,
                                          ));
                                        },
                                        child: Padding(
                                            padding: getPadding(top: 3),
                                            child: CommonImageView(
                                                svgPath: ImageConstant.imgEdit,
                                                height: getSize(16.00),
                                                width: getSize(16.00))),
                                      )
                                    ])),
                            Container(
                                width: getHorizontalSize(196.00),
                                margin: getMargin(top: 1, right: 10),
                                child: Text(
                                    userInfo.data?.customer?.defaultAddress
                                        ?.address2?.isEmpty ==
                                        true
                                        ? "${userInfo.data?.customer?.defaultAddress?.address1}"
                                        : "${userInfo.data?.customer?.defaultAddress?.address2}",
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoMedium12Gray500
                                        .copyWith(height: 1.50)))
                          ]))
                ])));
  }

  Widget copunCard() {
    return Align(
        alignment: Alignment.center,
        child: Container(
            margin: getMargin(left: 24, top: 21, right: 24),
            decoration: AppDecoration.outlineBlack9001e
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                      padding: getPadding(left: 21, top: 20, bottom: 20),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            CommonImageView(
                                svgPath: ImageConstant.imgSettings,
                                height: getSize(33.00),
                                width: getSize(33.00)),
                            Padding(
                                padding:
                                getPadding(left: 20, top: 8, bottom: 6),
                                child: Text("lbl_apply_coupon".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoBold18Gray501
                                        .copyWith(letterSpacing: 0.50)))
                          ])),
                  Padding(
                      padding: getPadding(top: 31, right: 37, bottom: 31),
                      child: CommonImageView(
                          svgPath: ImageConstant.imgArrowrightGray500,
                          height: getVerticalSize(12.00),
                          width: getHorizontalSize(6.00)))
                ])));
  }
}