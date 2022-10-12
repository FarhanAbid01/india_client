import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:saturn_flutter/presentation/homepage_screen/controller/homepage_controller.dart';
import 'package:saturn_flutter/presentation/homepage_screen/models/homepage_model.dart';

import '../product_detail_screen/widgets/product_page_item_widget.dart';
import '../product_detail_screen/widgets/sliderfoamingfacewa_item_widget.dart';
import 'controller/product_detail_controller.dart';
import 'models/product_page_item_model.dart';
import 'models/sliderfoamingfacewa_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';
import 'package:saturn_flutter/widgets/custom_button.dart';
import 'package:saturn_flutter/widgets/custom_icon_button.dart';
import 'package:saturn_flutter/widgets/custom_text_form_field.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetailScreen extends GetWidget<ProductDetailController> {
  var homePagecontroller = Get.find<HomepageController>();

  @override
  Widget build(BuildContext context) {
    print("_____________HEREEEEEEEEEEEEE");
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                height: getVerticalSize(1780.00),
                width: size.width,
                child: Stack(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: SingleChildScrollView(
                          child: Container(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            height: getVerticalSize(816.00),
                                            width: size.width,
                                            child: Stack(
                                                alignment: Alignment.bottomRight,
                                                children: [
                                                  Align(
                                                      alignment: Alignment.topLeft,
                                                      child: Container(
                                                          margin: getMargin(bottom: 10),
                                                          decoration:
                                                          AppDecoration.fillPink100,
                                                          child: Row(
                                                              crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                              mainAxisSize:
                                                              MainAxisSize.max,
                                                              children: [
                                                                GestureDetector(
                                                                    onTap: () {
                                                                      onTapImgArrowleft();
                                                                    },
                                                                    child: Padding(
                                                                        padding:
                                                                        getPadding(
                                                                            left:
                                                                            32,
                                                                            top: 24,
                                                                            bottom:
                                                                            259),
                                                                        child: CommonImageView(
                                                                            svgPath:
                                                                            ImageConstant
                                                                                .imgArrowright,
                                                                            height:
                                                                            getVerticalSize(
                                                                                12.00),
                                                                            width: getHorizontalSize(
                                                                                6.00)))),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 131,
                                                                        top: 18,
                                                                        right: 25,
                                                                        bottom: 55),
                                                                    child: Row(
                                                                        crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                        mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                        children: [
                                                                          Container(
                                                                              height: getVerticalSize(
                                                                                  8.00),
                                                                              margin: getMargin(
                                                                                  top:
                                                                                  214),
                                                                              child: SmoothIndicator(
                                                                                  offset:
                                                                                  0,
                                                                                  count:
                                                                                  3,
                                                                                  axisDirection: Axis
                                                                                      .horizontal,
                                                                                  effect: ScrollingDotsEffect(
                                                                                      spacing: 6,
                                                                                      activeDotColor: ColorConstant.whiteA700,
                                                                                      dotColor: ColorConstant.whiteA70077,
                                                                                      dotHeight: getVerticalSize(8.00),
                                                                                      dotWidth: getHorizontalSize(8.00)))),
                                                                          CustomIconButton(
                                                                              height:
                                                                              36,
                                                                              width: 36,
                                                                              margin: getMargin(
                                                                                  left:
                                                                                  109,
                                                                                  bottom:
                                                                                  186),
                                                                              shape: IconButtonShape
                                                                                  .CircleBorder18,
                                                                              child: CommonImageView(
                                                                                  svgPath:
                                                                                  ImageConstant.imgVector))
                                                                        ]))
                                                              ]))),
                                                  Align(
                                                      alignment: Alignment.bottomRight,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 28,
                                                              top: 10,
                                                              right: 28,
                                                              bottom: 4),
                                                          child: Text(
                                                              "lbl_read_more".tr,
                                                              overflow:
                                                              TextOverflow.ellipsis,
                                                              textAlign: TextAlign.left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular14Gray600
                                                                  .copyWith(
                                                                  letterSpacing:
                                                                  0.18,
                                                                  height: 1.00,
                                                                  decoration:
                                                                  TextDecoration
                                                                      .underline)))),
                                                  Align(
                                                      alignment: Alignment.bottomLeft,
                                                      child: Container(
                                                          height:
                                                          getVerticalSize(562.00),
                                                          width: size.width,
                                                          margin: getMargin(top: 10),
                                                          child: Stack(
                                                              alignment:
                                                              Alignment.bottomLeft,
                                                              children: [
                                                                Align(
                                                                    alignment: Alignment
                                                                        .topLeft,
                                                                    child: Container(
                                                                        margin:
                                                                        getMargin(
                                                                            bottom:
                                                                            10),
                                                                        decoration: AppDecoration
                                                                            .fillWhiteA700
                                                                            .copyWith(
                                                                            borderRadius:
                                                                            BorderRadiusStyle
                                                                                .customBorderTL40),
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                            crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .center,
                                                                            mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .start,
                                                                            children: [
                                                                              Container(
                                                                                  height: getVerticalSize(
                                                                                      3.00),
                                                                                  width: getHorizontalSize(
                                                                                      59.00),
                                                                                  margin: getMargin(
                                                                                      left:
                                                                                      24,
                                                                                      top:
                                                                                      14,
                                                                                      right:
                                                                                      24),
                                                                                  decoration: BoxDecoration(
                                                                                      color: ColorConstant.gray400,
                                                                                      borderRadius: BorderRadius.circular(getHorizontalSize(1.50)))),
                                                                              Container(
                                                                                  width: getHorizontalSize(
                                                                                      305.00),
                                                                                  margin: getMargin(
                                                                                      left:
                                                                                      24,
                                                                                      top:
                                                                                      30,
                                                                                      right:
                                                                                      24),
                                                                                  child: Text(
                                                                                      "msg_2_alpha_arbuti".tr,
                                                                                      maxLines: null,
                                                                                      textAlign: TextAlign.left,
                                                                                      style: AppStyle.txtRobotoMedium22.copyWith(letterSpacing: 0.18, height: 1.36))),
                                                                              Padding(
                                                                                  padding: getPadding(
                                                                                      left:
                                                                                      24,
                                                                                      top:
                                                                                      28,
                                                                                      right:
                                                                                      24),
                                                                                  child: Row(
                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
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
                                                                                  width: double
                                                                                      .infinity,
                                                                                  margin: getMargin(
                                                                                      left:
                                                                                      24,
                                                                                      top:
                                                                                      18,
                                                                                      right:
                                                                                      24),
                                                                                  decoration: BoxDecoration(
                                                                                      borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                                          15.00))),
                                                                                  child: Column(
                                                                                      mainAxisSize: MainAxisSize.min,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                      children: [
                                                                                        CustomButton(width: 326, text: "lbl_buy_now".tr),
                                                                                        CustomButton(width: 326, text: "lbl_add_to_cart".tr, margin: getMargin(top: 16), variant: ButtonVariant.FillPink101)
                                                                                      ])),
                                                                              Container(
                                                                                  margin: getMargin(
                                                                                      left:
                                                                                      24,
                                                                                      top:
                                                                                      23,
                                                                                      right:
                                                                                      24),
                                                                                  decoration: BoxDecoration(
                                                                                      borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                                          12.50))),
                                                                                  child: Row(
                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        CustomTextFormField(width: 97, focusNode: FocusNode(), controller: controller.group18217Controller, hintText: "lbl_description".tr, variant: TextFormFieldVariant.UnderLineGray600, padding: TextFormFieldPadding.PaddingB9, fontStyle: TextFormFieldFontStyle.RobotoRegular14, textInputAction: TextInputAction.done),
                                                                                        Padding(padding: getPadding(left: 22, bottom: 9), child: Text("lbl_benefits".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular14.copyWith(letterSpacing: 0.18))),
                                                                                        Padding(padding: getPadding(left: 34, bottom: 9), child: Text("msg_directions_to_u".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular14.copyWith(letterSpacing: 0.18)))
                                                                                      ])),
                                                                              Container(
                                                                                  width: getHorizontalSize(
                                                                                      320.00),
                                                                                  margin: getMargin(
                                                                                      left:
                                                                                      24,
                                                                                      top:
                                                                                      22,
                                                                                      right:
                                                                                      24),
                                                                                  child: Text(
                                                                                      "msg_saturn_pigmenta".tr,
                                                                                      maxLines: null,
                                                                                      textAlign: TextAlign.left,
                                                                                      style: AppStyle.txtRobotoRegular14.copyWith(letterSpacing: 0.18, height: 1.43))),
                                                                              Align(
                                                                                  alignment:
                                                                                  Alignment.centerLeft,
                                                                                  child: Padding(
                                                                                      padding: getPadding(left: 36, top: 15, right: 36, bottom: 28),
                                                                                      child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                        CommonImageView(svgPath: ImageConstant.imgRefresh, height: getVerticalSize(19.00), width: getHorizontalSize(18.00)),
                                                                                        Padding(padding: getPadding(left: 10, top: 3, bottom: 1), child: Text("msg_our_products_ar".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium14Gray600.copyWith(letterSpacing: 0.18, height: 1.00)))
                                                                                      ])))
                                                                            ]))),
                                                                Align(
                                                                    alignment: Alignment
                                                                        .bottomLeft,
                                                                    child: Container(
                                                                        margin:
                                                                        getMargin(
                                                                            left:
                                                                            28,
                                                                            top: 10,
                                                                            right:
                                                                            28),
                                                                        decoration: BoxDecoration(
                                                                            borderRadius:
                                                                            BorderRadius.circular(getHorizontalSize(
                                                                                8.00))),
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
                                                                              Padding(
                                                                                  padding: getPadding(
                                                                                      top:
                                                                                      1),
                                                                                  child: Row(
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        CustomButton(width: 118, text: "msg_2_alpha_arbuti2".tr, variant: ButtonVariant.FillPink50, shape: ButtonShape.RoundedBorder8, padding: ButtonPadding.PaddingAll8, fontStyle: ButtonFontStyle.RobotoMedium12),
                                                                                        CustomButton(width: 130, text: "msg_1_hyaluronic_a".tr, variant: ButtonVariant.FillPink50, shape: ButtonShape.RoundedBorder8, padding: ButtonPadding.PaddingAll8, fontStyle: ButtonFontStyle.RobotoMedium12),
                                                                                        CustomButton(
                                                                                            width:
                                                                                            172,
                                                                                            text: "msg_0_3_kojic_acid"
                                                                                                .tr,
                                                                                            margin: getMargin(
                                                                                                top:
                                                                                                9,
                                                                                                right:
                                                                                                10,
                                                                                                bottom:
                                                                                                1),
                                                                                            variant: ButtonVariant
                                                                                                .FillPink50,
                                                                                            shape: ButtonShape
                                                                                                .RoundedBorder8,
                                                                                            padding: ButtonPadding
                                                                                                .PaddingAll8,
                                                                                            fontStyle:
                                                                                            ButtonFontStyle.RobotoMedium12)

                                                                                      ])),
                                                                            ])))
                                                              ]))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 10,
                                                          top: 52,
                                                          bottom: 52),
                                                      child: Obx(() =>
                                                          CarouselSlider.builder(
                                                              options: CarouselOptions(
                                                                  height:
                                                                  getVerticalSize(
                                                                      164.00),
                                                                  initialPage: 0,
                                                                  autoPlay: true,
                                                                  viewportFraction: 1.0,
                                                                  enableInfiniteScroll:
                                                                  false,
                                                                  scrollDirection:
                                                                  Axis.horizontal,
                                                                  onPageChanged:
                                                                      (index, reason) {
                                                                    controller
                                                                        .silderIndex
                                                                        .value = index;
                                                                  }),
                                                              itemCount: controller
                                                                  .productDetailModelObj
                                                                  .value
                                                                  .sliderfoamingfacewaItemList
                                                                  .length,
                                                              itemBuilder: (context,
                                                                  index, realIndex) {
                                                                SliderfoamingfacewaItemModel
                                                                model = controller
                                                                    .productDetailModelObj
                                                                    .value
                                                                    .sliderfoamingfacewaItemList[index];
                                                                return
                                                                    Text('');
                                                                  // SliderfoamingfacewaItemWidget(
                                                                  //   model);
                                                              })))
                                                ]))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 29, top: 34, right: 29),
                                            child: Text("msg_you_may_also_li".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtRobotoMedium22
                                                    .copyWith(
                                                    letterSpacing: 0.18,
                                                    height: 1.00)))),
                                    FutureBuilder(
                                        future: homePagecontroller.productList(),
                                        builder: (context, snapshot) {
                                          if (!snapshot.hasData) {
                                            print('no data');
                                          } else {
                                            print('this is my data ' +
                                                snapshot.data.toString());
                                            var product = (snapshot.data ?? HomepageModel)
                                            as HomepageModel;
                                            print(snapshot.data);
                                            print('this is my lenght ${product}');
                                            print('homepagedata= $product');
                                            return SizedBox(
                                              height: 250,
                                              child: ListView.builder(
                                                scrollDirection: Axis.horizontal,
                                                shrinkWrap: true,
                                                primary: false,
                                                itemCount: product.data!.collections!
                                                    .nodes![1].products!.edges!.length,
                                                itemBuilder: (context, index) {
                                                  return Padding(
                                                    padding:  EdgeInsets.only(left: 5),
                                                    child: ProductPageItemWidget(product.data!.collections!
                                                        .nodes![1].products!.edges![index], product.data!.collections!
                                                        .nodes![1].products!.edges![index].node!),
                                                  );
                                                },
                                              ),
                                            );
                                          }
                                          return CircularProgressIndicator();
                                        }),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                            margin: getMargin(left: 10, top: 12),
                                            decoration: AppDecoration.fillGray600
                                                .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL20),
                                            child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Container(
                                                      height: getVerticalSize(35.00),
                                                      width: getHorizontalSize(39.00),
                                                      margin:
                                                      getMargin(top: 3, bottom: 9),
                                                      child: Stack(
                                                          alignment: Alignment.topRight,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        top: 10,
                                                                        right: 10),
                                                                    child: CommonImageView(
                                                                        svgPath:
                                                                        ImageConstant
                                                                            .imgCart,
                                                                        height: getSize(
                                                                            25.00),
                                                                        width: getSize(
                                                                            25.00)))),
                                                            Align(
                                                                alignment:
                                                                Alignment.topRight,
                                                                child: Container(
                                                                    margin: getMargin(
                                                                        left: 10,
                                                                        bottom: 10),
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
                                                                            .copyWith())))
                                                          ])),
                                                  Container(
                                                      height: getSize(27.00),
                                                      width: getSize(27.00),
                                                      margin: getMargin(
                                                          left: 12,
                                                          top: 10,
                                                          bottom: 11),
                                                      decoration:
                                                      AppDecoration.fillPink100,
                                                      child: Stack(children: [
                                                        Align(
                                                            alignment:
                                                            Alignment.topCenter,
                                                            child: Padding(
                                                                padding: getPadding(
                                                                    left: 5,
                                                                    right: 6,
                                                                    bottom: 10),
                                                                child: CommonImageView(
                                                                    imagePath:
                                                                    ImageConstant
                                                                        .imgFacetoner1,
                                                                    height:
                                                                    getVerticalSize(
                                                                        24.00),
                                                                    width:
                                                                    getHorizontalSize(
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
                                                      decoration:
                                                      AppDecoration.fillPink100,
                                                      child: Stack(children: [
                                                        Align(
                                                            alignment:
                                                            Alignment.topCenter,
                                                            child: Padding(
                                                                padding: getPadding(
                                                                    left: 5,
                                                                    right: 6,
                                                                    bottom: 10),
                                                                child: CommonImageView(
                                                                    imagePath:
                                                                    ImageConstant
                                                                        .imgFacetoner1,
                                                                    height:
                                                                    getVerticalSize(
                                                                        24.00),
                                                                    width:
                                                                    getHorizontalSize(
                                                                        16.00))))
                                                      ]))
                                                ]))),
                                    Container(
                                        height: getVerticalSize(88.00),
                                        width: getHorizontalSize(320.00),
                                        margin:
                                        getMargin(left: 15, top: 534, right: 15),
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
                                                          CrossAxisAlignment.center,
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                                height: getSize(88.00),
                                                                width: getSize(88.00),
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .pink100,
                                                                    borderRadius: BorderRadius.only(
                                                                        topLeft: Radius
                                                                            .circular(
                                                                            getHorizontalSize(
                                                                                20.00)),
                                                                        bottomLeft: Radius
                                                                            .circular(
                                                                            getHorizontalSize(
                                                                                20.00))))),
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
                                                                              textAlign:
                                                                              TextAlign
                                                                                  .left,
                                                                              style: AppStyle.txtRobotoMedium12Gray600.copyWith(
                                                                                  letterSpacing:
                                                                                  0.18,
                                                                                  height:
                                                                                  1.67))),
                                                                      Padding(
                                                                          padding:
                                                                          getPadding(
                                                                              top:
                                                                              4,
                                                                              right:
                                                                              10),
                                                                          child: Text(
                                                                              "msg_by_saturn_by_gh"
                                                                                  .tr,
                                                                              overflow:
                                                                              TextOverflow
                                                                                  .ellipsis,
                                                                              textAlign:
                                                                              TextAlign
                                                                                  .left,
                                                                              style: AppStyle.txtRobotoRegular10.copyWith(
                                                                                  letterSpacing:
                                                                                  0.18,
                                                                                  height:
                                                                                  1.40)))
                                                                    ]))
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                      height: getVerticalSize(20.00),
                                                      width: getHorizontalSize(39.00),
                                                      margin: getMargin(
                                                          top: 14,
                                                          right: 10,
                                                          bottom: 14),
                                                      child: Card(
                                                          clipBehavior: Clip.antiAlias,
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
                                                                            bottom: 1),
                                                                        child: ClipRRect(
                                                                            borderRadius:
                                                                            BorderRadius.circular(getHorizontalSize(
                                                                                2.00)),
                                                                            child: CommonImageView(
                                                                                svgPath:
                                                                                ImageConstant
                                                                                    .imgTicket18X40,
                                                                                height: getVerticalSize(
                                                                                    18.00),
                                                                                width: getHorizontalSize(
                                                                                    39.00))))),
                                                                Align(
                                                                    alignment: Alignment
                                                                        .center,
                                                                    child: Padding(
                                                                        padding:
                                                                        getPadding(
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
                                                                            style: AppStyle
                                                                                .txtRobotoRegular10Indigo900
                                                                                .copyWith(
                                                                                letterSpacing:
                                                                                0.18,
                                                                                height:
                                                                                2.00))))
                                                              ]))))
                                            ]))
                                  ]))))
                ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
