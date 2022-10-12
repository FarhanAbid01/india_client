import 'controller/checkout_controller.dart';
import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';
import 'package:saturn_flutter/widgets/custom_button.dart';

class CheckoutScreen extends GetWidget<CheckoutController> {
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
                                            svgPath: ImageConstant
                                                .imgArrowleftGray500,
                                            height: getVerticalSize(12.00),
                                            width: getHorizontalSize(6.00)))),
                                Padding(
                                    padding: getPadding(left: 37),
                                    child: Text("msg_delivery_inform".tr,
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
                                                          .imgGroup18352,
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
                                                                            .gray500))
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
                                    Padding(
                                        padding: getPadding(
                                            left: 10, top: 21, right: 10),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 2),
                                                  child: Text(
                                                      "msg_delivery_locati".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoMedium18
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.50))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Text("lbl_change".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoBold14
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.18,
                                                              height: 1.00,
                                                              decoration:
                                                                  TextDecoration
                                                                      .underline)))
                                            ])),
                                    Container(
                                        margin: getMargin(
                                            left: 10, top: 15, right: 10),
                                        decoration: AppDecoration
                                            .outlineBlack9001e
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                  height:
                                                      getVerticalSize(114.00),
                                                  width:
                                                      getHorizontalSize(235.00),
                                                  margin: getMargin(
                                                      top: 10, bottom: 4),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topRight,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 10,
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
                                                                        .copyWith()))),
                                                        Align(
                                                            alignment: Alignment
                                                                .topRight,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            10,
                                                                        bottom:
                                                                            10),
                                                                child: Row(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  8,
                                                                              bottom:
                                                                                  78),
                                                                          child: CommonImageView(
                                                                              svgPath: ImageConstant.imgLocation44X44,
                                                                              height: getVerticalSize(20.00),
                                                                              width: getHorizontalSize(14.00))),
                                                                      Container(
                                                                          margin: getMargin(
                                                                              left:
                                                                                  22,
                                                                              top:
                                                                                  2,
                                                                              bottom:
                                                                                  4),
                                                                          child: Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Padding(padding: getPadding(right: 10), child: Text("lbl_shrikanth".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoBold14Indigo900.copyWith(letterSpacing: 0.50))),
                                                                                Container(width: getHorizontalSize(158.00), margin: getMargin(top: 8, right: 10), child: Text("msg_3711_spring_hil2".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium12Gray500.copyWith(height: 1.50))),
                                                                                Container(
                                                                                    height: getVerticalSize(14.00),
                                                                                    width: getHorizontalSize(113.00),
                                                                                    margin: getMargin(top: 9, right: 10),
                                                                                    child: Stack(alignment: Alignment.centerLeft, children: [
                                                                                      Align(alignment: Alignment.centerLeft, child: Text("lbl_99_1234567890".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular14Gray500.copyWith(letterSpacing: 0.50))),
                                                                                      Align(alignment: Alignment.centerLeft, child: Text("lbl_99_1234567890".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular14.copyWith(letterSpacing: 0.50)))
                                                                                    ])),
                                                                                Padding(padding: getPadding(top: 7), child: Text("msg_goundanupama_gm".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular14.copyWith(letterSpacing: 0.50)))
                                                                              ]))
                                                                    ])))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 3, bottom: 109),
                                                  child: Text("lbl_2_deal".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular14WhiteA700
                                                          .copyWith()))
                                            ])),
                                    CustomButton(
                                        width: 326,
                                        text: "lbl_continue".tr,
                                        margin: getMargin(top: 41),
                                        fontStyle: ButtonFontStyle.DMSansBold15,
                                        alignment: Alignment.centerLeft),
                                    Container(
                                        height: getVerticalSize(88.00),
                                        width: getHorizontalSize(320.00),
                                        margin: getMargin(
                                            left: 1, top: 1298, right: 4),
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
                                                                              style: AppStyle.txtRobotoRegular10Gray500.copyWith(letterSpacing: 0.18, height: 1.40)))
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
                                                                            style: AppStyle.txtRobotoRegular10Indigo900.copyWith(letterSpacing: 0.18, height: 2.00))))
                                                              ]))))
                                            ]))
                                  ]))))
                    ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
