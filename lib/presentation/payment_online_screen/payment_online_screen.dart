import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:saturn_flutter/presentation/order_placed_screen/order_placed_screen.dart';

import 'controller/payment_online_controller.dart';
import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';
import 'package:saturn_flutter/widgets/custom_button.dart';
import 'package:saturn_flutter/widgets/custom_radio_button.dart';

class PaymentOnlineScreen extends GetWidget<PaymentOnlineController> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                margin: getMargin(left: 24, top: 28, right: 25),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          width: size.width,
                          margin: getMargin(left: 5, right: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapImgArrowleft();
                                    },
                                    child: Padding(
                                        padding: getPadding(top: 1, bottom: 4),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgArrowleft,
                                            height: getVerticalSize(12.00),
                                            width: getHorizontalSize(6.00)))),
                                Padding(
                                    padding: getPadding(left: 37),
                                    child: Text("lbl_payment".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoBold18
                                            .copyWith(letterSpacing: 0.50)))
                              ])),
                      Expanded(
                          child: SingleChildScrollView(
                              padding: getPadding(top: 24),
                              child: Container(
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                    Container(
                                        height: getVerticalSize(30.00),
                                        width: getHorizontalSize(235.00),
                                        margin: getMargin(left: 10, right: 10),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgGroup18352Gray600,
                                                      height: getVerticalSize(
                                                          30.00),
                                                      width: getHorizontalSize(
                                                          235.00))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 30,
                                                          top: 15,
                                                          right: 30,
                                                          bottom: 14),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        1.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        73.00),
                                                                decoration:
                                                                    BoxDecoration(
                                                                        color: ColorConstant
                                                                            .gray600)),
                                                            Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        1.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        73.00),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            29),
                                                                decoration:
                                                                    BoxDecoration(
                                                                        color: ColorConstant
                                                                            .gray600))
                                                          ])))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 10, top: 11, right: 10),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text("lbl_my_cart2".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoMedium10
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.50))),
                                              Padding(
                                                  padding: getPadding(left: 33),
                                                  child: Text(
                                                      "msg_delivery_inform".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoMedium10
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.50))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 31, top: 1),
                                                  child: Text("lbl_payment".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoMedium10
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.50)))
                                            ])),
                                    Container(
                                        width: double.infinity,
                                        margin: getMargin(
                                            left: 10, top: 23, right: 10),
                                        decoration: AppDecoration
                                            .outlineBlack9001e
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 259,
                                                          top: 3,
                                                          right: 9),
                                                      child: Text(
                                                          "lbl_2_deal".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRegular14WhiteA700
                                                              .copyWith()))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: CustomRadioButton(
                                                      text:
                                                          "msg_cash_on_deliver"
                                                              .tr,
                                                      iconSize: 24,
                                                      value: "text",
                                                      groupValue: controller
                                                          .radioGroup.value,
                                                      margin: getMargin(
                                                          left: 13,
                                                          top: 10,
                                                          right: 13,
                                                          bottom: 25),
                                                      onChange: (value) {
                                                        controller.radioGroup
                                                            .value = value;
                                                      }))
                                            ])),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            height: getVerticalSize(462.00),
                                            width: getHorizontalSize(326.00),
                                            margin: getMargin(top: 21),
                                            child: Stack(
                                                alignment: Alignment.bottomLeft,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Container(
                                                          margin: getMargin(
                                                              left: 10,
                                                              right: 10,
                                                              bottom: 10),
                                                          decoration: AppDecoration
                                                              .outlineBlack9001e
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder10),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerRight,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                259,
                                                                            top:
                                                                                3,
                                                                            right:
                                                                                9),
                                                                        child: Text(
                                                                            "lbl_2_deal"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtRobotoRegular14WhiteA700.copyWith()))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: CustomRadioButton(
                                                                        text: "lbl_pay_online".tr,
                                                                        iconSize: 24,
                                                                        value: "text",
                                                                        groupValue: controller.radioGroup1.value,
                                                                        margin: getMargin(left: 13, top: 10, right: 13),
                                                                        onChange: (value) {
                                                                          controller
                                                                              .radioGroup1
                                                                              .value = value;
                                                                        })),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Container(
                                                                        height: getVerticalSize(292.00),
                                                                        width: getHorizontalSize(274.00),
                                                                        margin: getMargin(left: 9, top: 12, right: 10, bottom: 66),
                                                                        child: Stack(alignment: Alignment.centerRight, children: [
                                                                          Align(
                                                                              alignment: Alignment.topLeft,
                                                                              child: Padding(padding: getPadding(top: 48, right: 10, bottom: 48), child: Text("lbl_2_deal".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular10WhiteA700.copyWith()))),
                                                                          Align(
                                                                              alignment: Alignment.centerRight,
                                                                              child: Container(
                                                                                  width: getHorizontalSize(260.00),
                                                                                  margin: getMargin(left: 10),
                                                                                  child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                    Container(
                                                                                        decoration: AppDecoration.outlinePink100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                                                                                        child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                          Padding(padding: getPadding(left: 11, top: 15, bottom: 14), child: CommonImageView(imagePath: ImageConstant.imgImage48, height: getVerticalSize(23.00), width: getHorizontalSize(35.00))),
                                                                                          Padding(padding: getPadding(left: 11, top: 20, bottom: 14), child: Text("lbl_google_pay".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoBold15.copyWith(letterSpacing: 0.50)))
                                                                                        ])),
                                                                                    Container(
                                                                                        margin: getMargin(top: 8),
                                                                                        decoration: AppDecoration.outlinePink100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                                                                                        child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                          Padding(padding: getPadding(left: 16, top: 13, bottom: 13), child: CommonImageView(imagePath: ImageConstant.imgPhonepay1, height: getVerticalSize(26.00), width: getHorizontalSize(30.00))),
                                                                                          Padding(padding: getPadding(left: 12, top: 20, bottom: 14), child: Text("lbl_phonepay".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoBold15Gray800.copyWith(letterSpacing: 0.50)))
                                                                                        ])),
                                                                                    Container(
                                                                                        margin: getMargin(top: 8),
                                                                                        decoration: AppDecoration.outlinePink10012.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                                                                                        child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                          Padding(padding: getPadding(left: 7, top: 20, bottom: 20), child: CommonImageView(imagePath: ImageConstant.imgUnknown1, height: getVerticalSize(12.00), width: getHorizontalSize(39.00))),
                                                                                          Padding(padding: getPadding(left: 12, top: 21, bottom: 14), child: Text("lbl_paytm".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoBold15Gray800.copyWith(letterSpacing: 0.50)))
                                                                                        ])),
                                                                                    Container(
                                                                                        margin: getMargin(top: 8),
                                                                                        decoration: AppDecoration.outlinePink100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                                                                                        child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [
                                                                                          Padding(padding: getPadding(left: 22, top: 16, bottom: 13), child: CommonImageView(svgPath: ImageConstant.imgVolume, height: getVerticalSize(22.00), width: getHorizontalSize(20.00))),
                                                                                          Padding(padding: getPadding(left: 16, top: 17, bottom: 20), child: Text("lbl_bank_transfer".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoBold14Gray800.copyWith(letterSpacing: 0.50)))
                                                                                        ])),
                                                                                    Container(
                                                                                        margin: getMargin(top: 8),
                                                                                        decoration: AppDecoration.outlinePink100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                                                                                        child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                          Padding(padding: getPadding(left: 22, top: 18, bottom: 17), child: CommonImageView(svgPath: ImageConstant.imgFolder, height: getVerticalSize(15.00), width: getHorizontalSize(20.00))),
                                                                                          Padding(padding: getPadding(left: 16, top: 17, bottom: 20), child: Text("msg_credit_card_or".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoBold14Gray800.copyWith(letterSpacing: 0.50)))
                                                                                        ]))
                                                                                  ])))
                                                                        ])))
                                                              ]))),
                                                  CustomButton(
                                                      width: 326,
                                                      text: "lbl_place_my_order"
                                                          .tr,
                                                      margin:
                                                          getMargin(top: 10),
                                                      fontStyle: ButtonFontStyle
                                                          .DMSansBold15,
                                                      onTap:
                                                          onTapBtnPlacemyorder,
                                                      alignment:
                                                          Alignment.bottomLeft)
                                                ]))),
                                    Container(
                                        height: getVerticalSize(88.00),
                                        width: getHorizontalSize(320.00),
                                        margin: getMargin(
                                            left: 1, top: 983, right: 4),
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      margin:
                                                          getMargin(left: 4),
                                                      decoration: AppDecoration
                                                          .outlineGray5003f
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder20),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                                height: getSize(
                                                                    88.00),
                                                                width: getSize(
                                                                    88.00),
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .pink100,
                                                                    borderRadius: BorderRadius.only(
                                                                        topLeft:
                                                                            Radius.circular(getHorizontalSize(
                                                                                20.00)),
                                                                        bottomLeft:
                                                                            Radius.circular(getHorizontalSize(20.00))))),
                                                            Container(
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            15,
                                                                        top: 14,
                                                                        right:
                                                                            15,
                                                                        bottom:
                                                                            20),
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
                                                                      Container(
                                                                          width: getHorizontalSize(
                                                                              198.00),
                                                                          child: Text(
                                                                              "msg_home_remedies_f".tr,
                                                                              maxLines: null,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoMedium12Gray600.copyWith(letterSpacing: 0.18, height: 1.67))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  4,
                                                                              right:
                                                                                  10),
                                                                          child: Text(
                                                                              "msg_by_saturn_by_gh".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRegular10.copyWith(letterSpacing: 0.18, height: 1.40)))
                                                                    ]))
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          20.00),
                                                      width: getHorizontalSize(
                                                          39.00),
                                                      margin: getMargin(
                                                          top: 14,
                                                          right: 10,
                                                          bottom: 14),
                                                      child: Card(
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          elevation: 0,
                                                          margin:
                                                              EdgeInsets.all(0),
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          2.00))),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                1,
                                                                            bottom:
                                                                                1),
                                                                        child: ClipRRect(
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                                2.00)),
                                                                            child: CommonImageView(
                                                                                svgPath: ImageConstant.imgTicket18X40,
                                                                                height: getVerticalSize(18.00),
                                                                                width: getHorizontalSize(39.00))))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                9,
                                                                            right:
                                                                                10),
                                                                        child: Text(
                                                                            "lbl_skin"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtRobotoRegular10Bluegray900.copyWith(letterSpacing: 0.18, height: 2.00))))
                                                              ]))))
                                            ]))
                                  ]))))
                    ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapBtnPlacemyorder() {
    // Get.toNamed(AppRoutes.orderPlacedScreen);
    PersistentNavBarNavigator.pushNewScreen(
      Get.context!,
      screen:OrderPlacedScreen(),
      withNavBar: true, // OPTIONAL VALUE. True by default.
      pageTransitionAnimation: PageTransitionAnimation.cupertino,
    );

  }
}
