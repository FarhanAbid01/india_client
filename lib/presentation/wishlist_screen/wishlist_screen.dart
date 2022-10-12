import '../wishlist_screen/widgets/wishlist_item_widget.dart';
import 'controller/wishlist_controller.dart';
import 'models/wishlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';
import 'package:saturn_flutter/widgets/custom_button.dart';

class WishlistScreen extends GetWidget<WishlistController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: getVerticalSize(198.00),
                              width: size.width,
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                            margin: getMargin(bottom: 10),
                                            decoration: AppDecoration
                                                .gradientGray600Gray60000,
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 30,
                                                          top: 19,
                                                          bottom: 86),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            GestureDetector(
                                                                onTap: () {
                                                                  onTapImgArrowleft();
                                                                },
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        top: 5,
                                                                        bottom:
                                                                            6),
                                                                    child: CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgArrowright,
                                                                        height: getVerticalSize(
                                                                            12.00),
                                                                        width: getHorizontalSize(
                                                                            6.00)))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            29),
                                                                child: Text(
                                                                    "lbl_wishlist"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoMedium24
                                                                        .copyWith()))
                                                          ])),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 136,
                                                          top: 24,
                                                          right: 42,
                                                          bottom: 90),
                                                      child: Text(
                                                          "lbl_see_all".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtDMSansBold15
                                                              .copyWith(
                                                                  height: 1.00,
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline)))
                                                ]))),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: getMargin(top: 24, bottom: 24),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.whiteA700)),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            margin: getMargin(
                                                left: 34, top: 10, right: 34),
                                            decoration: AppDecoration
                                                .outlineBlack9001e
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                      margin: getMargin(
                                                          left: 4,
                                                          top: 14,
                                                          bottom: 4),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        99.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        108.00),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    children: [
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.centerRight,
                                                                          child: Container(
                                                                              height: getSize(99.00),
                                                                              width: getSize(99.00),
                                                                              margin: getMargin(left: 10),
                                                                              child: Card(
                                                                                  clipBehavior: Clip.antiAlias,
                                                                                  elevation: 0,
                                                                                  margin: EdgeInsets.all(0),
                                                                                  color: ColorConstant.red201,
                                                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(getHorizontalSize(6.00))),
                                                                                  child: Stack(children: [
                                                                                    Align(alignment: Alignment.topCenter, child: Padding(padding: getPadding(left: 7, top: 4, right: 6, bottom: 10), child: CommonImageView(imagePath: ImageConstant.imgFoamingfacewa82X84, height: getVerticalSize(82.00), width: getHorizontalSize(84.00))))
                                                                                  ])))),
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.topLeft,
                                                                          child: Container(
                                                                              height: getVerticalSize(18.00),
                                                                              width: getHorizontalSize(39.00),
                                                                              margin: getMargin(top: 6, right: 10, bottom: 10),
                                                                              child: Stack(alignment: Alignment.topRight, children: [
                                                                                Align(alignment: Alignment.centerLeft, child: CommonImageView(svgPath: ImageConstant.imgTicket, height: getVerticalSize(18.00), width: getHorizontalSize(39.00))),
                                                                                Align(alignment: Alignment.topRight, child: Padding(padding: getPadding(left: 10, top: 3, right: 6, bottom: 10), child: Text("lbl_34".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoBold10.copyWith(letterSpacing: 0.18, height: 1.00))))
                                                                              ])))
                                                                    ])),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 5,
                                                                        right:
                                                                            10),
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
                                                                        .copyWith()))
                                                          ])),
                                                  Container(
                                                      margin: getMargin(
                                                          left: 9,
                                                          top: 3,
                                                          right: 9,
                                                          bottom: 15),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            10),
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
                                                                            .txtRobotoRegular14WhiteA700
                                                                            .copyWith()))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Container(
                                                                    width: getHorizontalSize(
                                                                        140.00),
                                                                    margin: getMargin(
                                                                        right:
                                                                            10),
                                                                    child: Text(
                                                                        "msg_foaming_face_wa"
                                                                            .tr,
                                                                        maxLines:
                                                                            null,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle.txtRobotoRegular12.copyWith(
                                                                            letterSpacing:
                                                                                0.18,
                                                                            height:
                                                                                1.17)))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Container(
                                                                    margin: getMargin(top: 12, right: 10),
                                                                    child: RichText(
                                                                        text: TextSpan(children: [
                                                                          TextSpan(
                                                                              text: "lbl_rs_699".tr,
                                                                              style: TextStyle(color: ColorConstant.gray600, fontSize: getFontSize(18), fontFamily: 'Roboto', fontWeight: FontWeight.w500, letterSpacing: 0.18, height: 1.11)),
                                                                          TextSpan(
                                                                              text: ' ',
                                                                              style: TextStyle(color: ColorConstant.indigo900, fontSize: getFontSize(14), fontFamily: 'Roboto', fontWeight: FontWeight.w400, letterSpacing: 0.18, height: 1.43)),
                                                                          TextSpan(
                                                                              text: "lbl_rs_999".tr,
                                                                              style: TextStyle(color: ColorConstant.indigo900, fontSize: getFontSize(12), fontFamily: 'Roboto', fontWeight: FontWeight.w400, letterSpacing: 0.18, height: 1.67, decoration: TextDecoration.lineThrough))
                                                                        ]),
                                                                        textAlign: TextAlign.left))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        top: 10,
                                                                        right:
                                                                            10),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .center,
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Container(
                                                                              decoration: AppDecoration.outlineBlack90023.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                                                                              child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                Container(height: getVerticalSize(2.00), width: getHorizontalSize(14.00), margin: getMargin(left: 8, top: 14, right: 8, bottom: 14), decoration: BoxDecoration(color: ColorConstant.whiteA700))
                                                                              ])),
                                                                          CustomButton(
                                                                              width: 106,
                                                                              text: "lbl_move_to_cart".tr,
                                                                              margin: getMargin(left: 10),
                                                                              shape: ButtonShape.RoundedBorder8,
                                                                              padding: ButtonPadding.PaddingAll8,
                                                                              fontStyle: ButtonFontStyle.DMSansBold10)
                                                                        ])))
                                                          ]))
                                                ])))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 24, top: 12, right: 24),
                              child: Obx(() => ListView.builder(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: controller.wishlistModelObj.value
                                      .wishlistItemList.length,
                                  itemBuilder: (context, index) {
                                    WishlistItemModel model = controller
                                        .wishlistModelObj
                                        .value
                                        .wishlistItemList[index];
                                    return WishlistItemWidget(model);
                                  })))),
                      CustomButton(
                          width: 326,
                          text: "lbl_shop_more".tr,
                          margin: getMargin(left: 24, top: 24, right: 24),
                          alignment: Alignment.center),
                      Container(
                          margin: getMargin(left: 10, top: 115, bottom: 25),
                          decoration: AppDecoration.fillGray600.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                    height: getVerticalSize(35.00),
                                    width: getHorizontalSize(39.00),
                                    margin: getMargin(top: 3, bottom: 9),
                                    child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                  padding: getPadding(
                                                      top: 10, right: 10),
                                                  child: CommonImageView(
                                                      svgPath:
                                                          ImageConstant.imgCart,
                                                      height: getSize(25.00),
                                                      width: getSize(25.00)))),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                  margin: getMargin(
                                                      left: 10, bottom: 10),
                                                  padding: getPadding(
                                                      left: 6,
                                                      top: 3,
                                                      right: 7,
                                                      bottom: 2),
                                                  decoration: AppDecoration
                                                      .txtFillRed400
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtRoundedBorder10),
                                                  child: Text("lbl_3".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoMedium14WhiteA700
                                                          .copyWith())))
                                        ])),
                                Container(
                                    height: getSize(27.00),
                                    width: getSize(27.00),
                                    margin: getMargin(
                                        left: 12, top: 10, bottom: 11),
                                    decoration: AppDecoration.fillPink100,
                                    child: Stack(children: [
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 5,
                                                  right: 6,
                                                  bottom: 10),
                                              child: CommonImageView(
                                                  imagePath: ImageConstant
                                                      .imgFacetoner1,
                                                  height:
                                                      getVerticalSize(24.00),
                                                  width: getHorizontalSize(
                                                      16.00))))
                                    ])),
                                Container(
                                    height: getSize(27.00),
                                    width: getSize(27.00),
                                    margin: getMargin(
                                        left: 13,
                                        top: 10,
                                        right: 33,
                                        bottom: 11),
                                    decoration: AppDecoration.fillPink100,
                                    child: Stack(children: [
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 5,
                                                  right: 6,
                                                  bottom: 10),
                                              child: CommonImageView(
                                                  imagePath: ImageConstant
                                                      .imgFacetoner1,
                                                  height:
                                                      getVerticalSize(24.00),
                                                  width: getHorizontalSize(
                                                      16.00))))
                                    ]))
                              ]))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
