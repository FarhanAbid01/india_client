import '../product_purchase_screen/widgets/sliderfoamingfacewa1_item_widget.dart';
import 'controller/product_purchase_controller.dart';
import 'models/sliderfoamingfacewa1_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';
import 'package:saturn_flutter/widgets/custom_button.dart';
import 'package:saturn_flutter/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductPurchaseScreen extends GetWidget<ProductPurchaseController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                  Expanded(
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: SingleChildScrollView(
                              child: Container(
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        height: getVerticalSize(769.00),
                                        width: size.width,
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Container(
                                                      decoration: AppDecoration
                                                          .fillPink100,
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child:
                                                                    GestureDetector(
                                                                        onTap:
                                                                            () {
                                                                          onTapImgArrowleft();
                                                                        },
                                                                        child: Padding(
                                                                            padding: getPadding(
                                                                                left: 32,
                                                                                top: 24,
                                                                                right: 32),
                                                                            child: CommonImageView(svgPath: ImageConstant.imgArrowright, height: getVerticalSize(12.00), width: getHorizontalSize(6.00))))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            8.00),
                                                                    margin: getMargin(
                                                                        left:
                                                                            32,
                                                                        top:
                                                                            297,
                                                                        right:
                                                                            32),
                                                                    child: SmoothIndicator(
                                                                        offset:
                                                                            0,
                                                                        count:
                                                                            3,
                                                                        axisDirection:
                                                                            Axis
                                                                                .horizontal,
                                                                        effect: ScrollingDotsEffect(
                                                                            spacing:
                                                                                6,
                                                                            activeDotColor:
                                                                                ColorConstant.whiteA700,
                                                                            dotColor: ColorConstant.whiteA70077,
                                                                            dotHeight: getVerticalSize(8.00),
                                                                            dotWidth: getHorizontalSize(8.00))))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child:
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            61.00),
                                                                        width: getHorizontalSize(
                                                                            133.00),
                                                                        margin: getMargin(
                                                                            left:
                                                                                32,
                                                                            top:
                                                                                17,
                                                                            right:
                                                                                32),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.centerRight,
                                                                            children: [
                                                                              Align(
                                                                                  alignment: Alignment.topLeft,
                                                                                  child: Container(
                                                                                      height: getSize(42.00),
                                                                                      width: getSize(42.00),
                                                                                      margin: getMargin(top: 7, right: 10, bottom: 10),
                                                                                      decoration: AppDecoration.outlineBlack9003f,
                                                                                      child: Stack(children: [
                                                                                        Align(alignment: Alignment.centerLeft, child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(6.00)), child: CommonImageView(imagePath: ImageConstant.imgBenefits102, height: getSize(42.00), width: getSize(42.00))))
                                                                                      ]))),
                                                                              Align(
                                                                                  alignment: Alignment.centerRight,
                                                                                  child: Container(
                                                                                      height: getSize(40.00),
                                                                                      width: getSize(40.00),
                                                                                      margin: getMargin(left: 10, top: 9, right: 1, bottom: 10),
                                                                                      decoration: AppDecoration.outlineBlack9003f,
                                                                                      child: Stack(children: [
                                                                                        Align(alignment: Alignment.centerLeft, child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(6.00)), child: CommonImageView(imagePath: ImageConstant.imgImage58, height: getSize(40.00), width: getSize(40.00))))
                                                                                      ]))),
                                                                              Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 36, right: 35), child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(6.00)), child: CommonImageView(imagePath: ImageConstant.imgAlpha01720x1, height: getSize(61.00), width: getSize(61.00)))))
                                                                            ]))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child:
                                                                    Container(
                                                                        width: double
                                                                            .infinity,
                                                                        margin: getMargin(
                                                                            top:
                                                                                13,
                                                                            bottom:
                                                                                1),
                                                                        decoration: AppDecoration.fillWhiteA700.copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .customBorderTL40),
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              Container(height: getVerticalSize(3.00), width: getHorizontalSize(59.00), margin: getMargin(left: 24, top: 15, right: 24), decoration: BoxDecoration(color: ColorConstant.gray400, borderRadius: BorderRadius.circular(getHorizontalSize(1.50)))),
                                                                              Container(width: getHorizontalSize(305.00), margin: getMargin(left: 24, top: 20, right: 24), child: Text("msg_2_alpha_arbuti".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium22.copyWith(letterSpacing: 0.18, height: 1.36))),
                                                                              Padding(
                                                                                  padding: getPadding(left: 24, top: 28, right: 24),
                                                                                  child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [
                                                                                    Container(
                                                                                        margin: getMargin(top: 1, bottom: 5),
                                                                                        child: RichText(
                                                                                            text: TextSpan(children: [
                                                                                              TextSpan(text: "lbl_rs_699".tr, style: TextStyle(color: ColorConstant.gray600, fontSize: getFontSize(22), fontFamily: 'Roboto', fontWeight: FontWeight.w500, letterSpacing: 0.18, height: 0.55)),
                                                                                              TextSpan(text: ' ', style: TextStyle(color: ColorConstant.indigo900, fontSize: getFontSize(14), fontFamily: 'Roboto', fontWeight: FontWeight.w400, letterSpacing: 0.18, height: 0.86)),
                                                                                              TextSpan(text: "lbl_rs_999".tr, style: TextStyle(color: ColorConstant.indigo900, fontSize: getFontSize(12), fontFamily: 'Roboto', fontWeight: FontWeight.w400, letterSpacing: 0.18, height: 1.00, decoration: TextDecoration.lineThrough))
                                                                                            ]),
                                                                                            textAlign: TextAlign.left)),
                                                                                    Padding(padding: getPadding(left: 35, top: 3, bottom: 4), child: Text("lbl_quantity".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium14.copyWith(letterSpacing: 0.42))),
                                                                                    Container(
                                                                                        height: getVerticalSize(25.00),
                                                                                        width: getHorizontalSize(28.00),
                                                                                        margin: getMargin(left: 6),
                                                                                        child: Stack(alignment: Alignment.bottomCenter, children: [
                                                                                          Align(alignment: Alignment.centerLeft, child: CommonImageView(svgPath: ImageConstant.imgRectangle430, height: getVerticalSize(25.00), width: getHorizontalSize(28.00))),
                                                                                          Align(alignment: Alignment.bottomCenter, child: Padding(padding: getPadding(left: 9, top: 10, right: 9, bottom: 10), child: CommonImageView(svgPath: ImageConstant.imgVectorGray500, height: getVerticalSize(2.00), width: getHorizontalSize(9.00))))
                                                                                        ])),
                                                                                    Container(
                                                                                        decoration: AppDecoration.outlinePink103,
                                                                                        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                          Padding(padding: getPadding(left: 13, top: 5, right: 13, bottom: 5), child: Text("lbl_4".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoBold14Indigo900.copyWith(letterSpacing: 0.50)))
                                                                                        ])),
                                                                                    Container(
                                                                                        height: getVerticalSize(25.00),
                                                                                        width: getHorizontalSize(28.00),
                                                                                        child: Stack(alignment: Alignment.center, children: [
                                                                                          Align(alignment: Alignment.centerLeft, child: CommonImageView(svgPath: ImageConstant.imgRectangle432, height: getVerticalSize(25.00), width: getHorizontalSize(28.00))),
                                                                                          Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 9, top: 7, right: 9, bottom: 7), child: CommonImageView(svgPath: ImageConstant.imgPlus, height: getSize(9.00), width: getSize(9.00))))
                                                                                        ]))
                                                                                  ])),
                                                                              Container(
                                                                                  width: double.infinity,
                                                                                  margin: getMargin(left: 24, top: 20, right: 24, bottom: 72),
                                                                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(15.00))),
                                                                                  child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                    CustomButton(width: 326, text: "lbl_buy_now".tr),
                                                                                    CustomButton(width: 326, text: "lbl_add_to_cart".tr, margin: getMargin(top: 16), variant: ButtonVariant.FillPink101)
                                                                                  ]))
                                                                            ])))
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          277.00),
                                                      width: size.width,
                                                      margin: getMargin(
                                                          top: 49, bottom: 49),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .topRight,
                                                          children: [
                                                            Obx(() => CarouselSlider.builder(
                                                                options: CarouselOptions(
                                                                    height: getVerticalSize(277.00),
                                                                    initialPage: 0,
                                                                    autoPlay: true,
                                                                    viewportFraction: 1.0,
                                                                    enableInfiniteScroll: false,
                                                                    scrollDirection: Axis.horizontal,
                                                                    onPageChanged: (index, reason) {
                                                                      controller
                                                                          .silderIndex
                                                                          .value = index;
                                                                    }),
                                                                itemCount: controller.productPurchaseModelObj.value.sliderfoamingfacewa1ItemList.length,
                                                                itemBuilder: (context, index, realIndex) {
                                                                  Sliderfoamingfacewa1ItemModel
                                                                      model =
                                                                      controller
                                                                          .productPurchaseModelObj
                                                                          .value
                                                                          .sliderfoamingfacewa1ItemList[index];
                                                                  return Sliderfoamingfacewa1ItemWidget(
                                                                      model);
                                                                })),
                                                            CustomIconButton(
                                                                height: 36,
                                                                width: 36,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            25,
                                                                        top: 20,
                                                                        right:
                                                                            25,
                                                                        bottom:
                                                                            20),
                                                                shape: IconButtonShape
                                                                    .CircleBorder18,
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgFavorite))
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Container(
                                                      margin: getMargin(
                                                          left: 10,
                                                          top: 21,
                                                          bottom: 21),
                                                      decoration: AppDecoration
                                                          .fillGray600
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .customBorderTL20),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Container(
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            40,
                                                                        top: 3,
                                                                        bottom:
                                                                            24),
                                                                padding:
                                                                    getPadding(
                                                                        left: 6,
                                                                        top: 3,
                                                                        right:
                                                                            7,
                                                                        bottom:
                                                                            2),
                                                                decoration: AppDecoration
                                                                    .txtFillRed400
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .txtRoundedBorder10),
                                                                child: Text(
                                                                    "lbl_3".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoMedium14WhiteA700
                                                                        .copyWith())),
                                                            Container(
                                                                height: getSize(
                                                                    27.00),
                                                                width: getSize(
                                                                    27.00),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            12,
                                                                        top: 10,
                                                                        bottom:
                                                                            11),
                                                                decoration:
                                                                    AppDecoration
                                                                        .fillPink100,
                                                                child: Stack(
                                                                    children: [
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .topCenter,
                                                                          child: Padding(
                                                                              padding: getPadding(left: 5, right: 6, bottom: 10),
                                                                              child: CommonImageView(imagePath: ImageConstant.imgFacetoner1, height: getVerticalSize(24.00), width: getHorizontalSize(16.00))))
                                                                    ])),
                                                            Container(
                                                                height: getSize(
                                                                    27.00),
                                                                width: getSize(
                                                                    27.00),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            13,
                                                                        top: 10,
                                                                        right:
                                                                            32,
                                                                        bottom:
                                                                            11),
                                                                decoration:
                                                                    AppDecoration
                                                                        .fillPink100,
                                                                child: Stack(
                                                                    children: [
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .topCenter,
                                                                          child: Padding(
                                                                              padding: getPadding(left: 5, right: 6, bottom: 10),
                                                                              child: CommonImageView(imagePath: ImageConstant.imgFacetoner1, height: getVerticalSize(24.00), width: getHorizontalSize(16.00))))
                                                                    ]))
                                                          ]))),
                                              CustomIconButton(
                                                  height: 36,
                                                  width: 36,
                                                  margin: getMargin(
                                                      left: 25,
                                                      top: 18,
                                                      right: 25,
                                                      bottom: 18),
                                                  shape: IconButtonShape
                                                      .CircleBorder18,
                                                  alignment: Alignment.topRight,
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgVector))
                                            ]))),
                                Container(
                                    height: getVerticalSize(88.00),
                                    width: getHorizontalSize(320.00),
                                    margin: getMargin(
                                        left: 25, top: 923, right: 25),
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  margin: getMargin(left: 4),
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
                                                            height:
                                                                getSize(88.00),
                                                            width:
                                                                getSize(88.00),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .pink100,
                                                                borderRadius: BorderRadius.only(
                                                                    topLeft: Radius.circular(
                                                                        getHorizontalSize(
                                                                            20.00)),
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            getHorizontalSize(20.00))))),
                                                        Container(
                                                            margin: getMargin(
                                                                left: 15,
                                                                top: 14,
                                                                right: 15,
                                                                bottom: 20),
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
                                                                          "msg_home_remedies_f"
                                                                              .tr,
                                                                          maxLines:
                                                                              null,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle.txtRobotoMedium12Gray600.copyWith(
                                                                              letterSpacing: 0.18,
                                                                              height: 1.67))),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              4,
                                                                          right:
                                                                              10),
                                                                      child: Text(
                                                                          "msg_by_saturn_by_gh"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle.txtRobotoRegular10.copyWith(
                                                                              letterSpacing: 0.18,
                                                                              height: 1.40)))
                                                                ]))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(20.00),
                                                  width:
                                                      getHorizontalSize(39.00),
                                                  margin: getMargin(
                                                      top: 14,
                                                      right: 10,
                                                      bottom: 14),
                                                  child: Card(
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      elevation: 0,
                                                      margin: EdgeInsets.all(0),
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      2.00))),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        top: 1,
                                                                        bottom:
                                                                            1),
                                                                    child: ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(getHorizontalSize(
                                                                                2.00)),
                                                                        child: CommonImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgTicket18X40,
                                                                            height: getVerticalSize(18.00),
                                                                            width: getHorizontalSize(39.00))))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left: 9,
                                                                        right:
                                                                            10),
                                                                    child: Text(
                                                                        "lbl_skin"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle.txtRobotoRegular10Bluegray900.copyWith(
                                                                            letterSpacing:
                                                                                0.18,
                                                                            height:
                                                                                2.00))))
                                                          ]))))
                                        ]))
                              ])))))
                ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
