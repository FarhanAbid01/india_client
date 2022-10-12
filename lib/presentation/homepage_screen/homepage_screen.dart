import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:saturn_flutter/presentation/homepage_screen/controller/homepage_controller.dart';
import 'package:saturn_flutter/presentation/homepage_screen/models/blog_model.dart';
import 'package:saturn_flutter/presentation/homepage_screen/models/homepage_model.dart';
import 'package:saturn_flutter/presentation/product_detail_screen/product_detail.dart';
import '../homepage_screen/widgets/home_screen1_item_widget.dart';
import '../product_listing_screen/product_listing_screen.dart';
import 'models/home_screen1_item_model.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:saturn_flutter/core/app_export.dart';
import 'package:saturn_flutter/widgets/custom_icon_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomepageController homePagecontroller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: getMargin(
          top: 10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: SingleChildScrollView(
                  padding: getPadding(
                    top: 11,
                  ),
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              left: 27,
                              right: 27,
                            ),
                            child: Text(
                              "lbl_categories".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoMedium22.copyWith(),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 15,
                              top: 15,
                              right: 15,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  margin: getMargin(
                                    top: 1,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgMusic65X65,
                                          height: getSize(
                                            65.00,
                                          ),
                                          width: getSize(
                                            65.00,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 18,
                                          top: 10,
                                          right: 18,
                                        ),
                                        child: Text(
                                          "lbl_skin".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRobotoMedium14
                                              .copyWith(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    top: 1,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: CommonImageView(
                                          svgPath:
                                          ImageConstant.imgLocation65X65,
                                          height: getSize(
                                            65.00,
                                          ),
                                          width: getSize(
                                            65.00,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 19,
                                          top: 10,
                                          right: 19,
                                        ),
                                        child: Text(
                                          "lbl_hair".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRobotoMedium14
                                              .copyWith(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    top: 1,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CommonImageView(
                                        svgPath: ImageConstant.imgUser1,
                                        height: getSize(
                                          65.00,
                                        ),
                                        width: getSize(
                                          65.00,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 4,
                                            top: 10,
                                            right: 4,
                                          ),
                                          child: Text(
                                            "lbl_wellness".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoMedium14
                                                .copyWith(),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgUser2,
                                          height: getSize(
                                            65.00,
                                          ),
                                          width: getSize(
                                            65.00,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 15,
                                          top: 11,
                                          right: 15,
                                        ),
                                        child: Text(
                                          "lbl_sleep".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRobotoMedium14
                                              .copyWith(),
                                        ),
                                      ),
                                    ],
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
                              left: 27,
                              top: 26,
                              right: 27,
                            ),
                            child: Text(
                              "msg_previously_orde".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoMedium22.copyWith(),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: getMargin(
                              left: 15,
                              top: 15,
                              right: 15,
                            ),
                            decoration:
                            AppDecoration.outlineBlack9001e.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 10,
                                    top: 9,
                                    bottom: 10,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      CustomIconButton(
                                        height: 60,
                                        width: 60,
                                        variant: IconButtonVariant.FillPink100,
                                        shape: IconButtonShape.RoundedBorder15,
                                        padding: IconButtonPadding.PaddingAll5,
                                        child: CommonImageView(
                                          imagePath:
                                          ImageConstant.imgWhiteandblack,
                                        ),
                                      ),
                                      Container(
                                        margin: getMargin(
                                          left: 14,
                                          top: 6,
                                          bottom: 4,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: getHorizontalSize(
                                                140.00,
                                              ),
                                              child: Text(
                                                "msg_foaming_face_wa".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular12
                                                    .copyWith(
                                                  letterSpacing: 0.18,
                                                  height: 1.17,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: getMargin(
                                                top: 9,
                                                right: 10,
                                              ),
                                              child: RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: "lbl_rs_699".tr,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .gray600,
                                                        fontSize: getFontSize(
                                                          14,
                                                        ),
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                        FontWeight.w500,
                                                        letterSpacing: 0.18,
                                                        height: 0.86,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: ' ',
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .indigo900,
                                                        fontSize: getFontSize(
                                                          14,
                                                        ),
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                        FontWeight.w400,
                                                        letterSpacing: 0.18,
                                                        height: 0.86,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: "lbl_rs_999".tr,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .indigo900,
                                                        fontSize: getFontSize(
                                                          10,
                                                        ),
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                        FontWeight.w400,
                                                        letterSpacing: 0.18,
                                                        height: 1.20,
                                                        decoration:
                                                        TextDecoration
                                                            .lineThrough,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                CustomIconButton(
                                  height: 44,
                                  width: 44,
                                  margin: getMargin(
                                    top: 18,
                                    right: 17,
                                    bottom: 17,
                                  ),
                                  variant: IconButtonVariant.OutlineBlack90023,
                                  shape: IconButtonShape.RoundedBorder15,
                                  padding: IconButtonPadding.PaddingAll13,
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgCart44X44,
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
                              left: 27,
                              top: 22,
                              right: 27,
                            ),
                            child: Text(
                              "lbl_shop".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoMedium22.copyWith(
                                letterSpacing: 0.18,
                                height: 1.00,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 15,
                            top: 19,
                            right: 15,
                          ),
                          child: FutureBuilder(
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
                                  return Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 15,
                                            top: 8,
                                            right: 15,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  bottom: 3,
                                                ),
                                                child: Text(
                                                  "lbl_skin_products".tr,
                                                  overflow:
                                                  TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular14
                                                      .copyWith(
                                                    letterSpacing: 0.18,
                                                    height: 1.00,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 3,
                                                ),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    Get.to(() =>
                                                        ProductListingScreen(
                                                          product: product,
                                                        ));
                                                  },
                                                  child: Text(
                                                    "lbl_see_all".tr,
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRegular14Gray600
                                                        .copyWith(
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
                                      StaggeredGridView.countBuilder(
                                        shrinkWrap: true,
                                        primary: false,
                                        crossAxisCount: 4,
                                        crossAxisSpacing: getHorizontalSize(
                                          16.00,
                                        ),
                                        mainAxisSpacing: getHorizontalSize(
                                          16.00,
                                        ),
                                        staggeredTileBuilder: (index) {
                                          return StaggeredTile.fit(2);
                                        },
                                        itemCount: product.data!.collections!
                                            .nodes![1].products!.edges!.length,
                                        itemBuilder: (context, index) {
                                          return GestureDetector(
                                            onTap: () {
                                              print("______________ERE");
                                              // Get.to(ProductDetailScreen());
                                              Get.to(ProductDetailUpdates(
                                                  product
                                                      .data!
                                                      .collections!
                                                      .nodes![1]
                                                      .products!
                                                      .edges![index]
                                                      .node));
                                            },
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                height: getVerticalSize(
                                                  211.00,
                                                ),
                                                width: getHorizontalSize(
                                                  164.00,
                                                ),
                                                child: Stack(
                                                  alignment: Alignment.topLeft,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                      Alignment.center,
                                                      child: Container(
                                                        margin: getMargin(
                                                          left: 4,
                                                        ),
                                                        decoration: AppDecoration
                                                            .outlineBlack9001e12,
                                                        child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.min,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          children: [
                                                            Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Container(
                                                                width:
                                                                getHorizontalSize(
                                                                  160.00,
                                                                ),
                                                                decoration:
                                                                AppDecoration
                                                                    .fillPink100
                                                                    .copyWith(
                                                                  borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder16,
                                                                ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                                  mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                      child:
                                                                      Container(
                                                                        height:
                                                                        getVerticalSize(
                                                                          119.00,
                                                                        ),
                                                                        width:
                                                                        getHorizontalSize(
                                                                          108.00,
                                                                        ),
                                                                        margin:
                                                                        getMargin(
                                                                          left:
                                                                          13,
                                                                          top:
                                                                          10,
                                                                          right:
                                                                          13,
                                                                        ),
                                                                        child:
                                                                        Stack(
                                                                          alignment:
                                                                          Alignment.topRight,
                                                                          children: [
                                                                            Align(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: Padding(
                                                                                padding: getPadding(
                                                                                  right: 10,
                                                                                ),
                                                                                child: CachedNetworkImage(
                                                                                  imageUrl: product.data!.collections!.nodes![1].products!.edges![index].node!.variants!.edges![0].node!.image!.url.toString(),
                                                                                  placeholder: (context, url) => CircularProgressIndicator(),
                                                                                  errorWidget: (context, url, error) => Icon(Icons.error),
                                                                                  fit: BoxFit.fill,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: Alignment.topRight,
                                                                              child: Container(
                                                                                height: getSize(
                                                                                  24.00,
                                                                                ),
                                                                                width: getSize(
                                                                                  24.00,
                                                                                ),
                                                                                margin: getMargin(
                                                                                  left: 10,
                                                                                  bottom: 10,
                                                                                ),
                                                                                child: Stack(
                                                                                  alignment: Alignment.centerLeft,
                                                                                  children: [
                                                                                    Align(
                                                                                      alignment: Alignment.bottomCenter,
                                                                                      child: Padding(
                                                                                        padding: getPadding(
                                                                                          left: 6,
                                                                                          top: 10,
                                                                                          right: 6,
                                                                                          bottom: 6,
                                                                                        ),
                                                                                        child: CommonImageView(
                                                                                          svgPath: ImageConstant.imgFavorite,
                                                                                          height: getVerticalSize(
                                                                                            10.00,
                                                                                          ),
                                                                                          width: getHorizontalSize(
                                                                                            11.00,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Align(
                                                                                      alignment: Alignment.centerLeft,
                                                                                      child: Container(
                                                                                        height: getSize(
                                                                                          24.00,
                                                                                        ),
                                                                                        width: getSize(
                                                                                          24.00,
                                                                                        ),
                                                                                        decoration: BoxDecoration(
                                                                                          color: ColorConstant.whiteA70060,
                                                                                          borderRadius: BorderRadius.circular(
                                                                                            getHorizontalSize(
                                                                                              12.00,
                                                                                            ),
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
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                      child:
                                                                      Container(
                                                                        width:
                                                                        getHorizontalSize(
                                                                          160.00,
                                                                        ),
                                                                        margin:
                                                                        getMargin(
                                                                          top:
                                                                          6,
                                                                        ),
                                                                        decoration: AppDecoration
                                                                            .fillWhiteA700
                                                                            .copyWith(
                                                                          borderRadius:
                                                                          BorderRadiusStyle.customBorderBL16,
                                                                        ),
                                                                        child:
                                                                        Column(
                                                                          mainAxisSize:
                                                                          MainAxisSize.min,
                                                                          crossAxisAlignment:
                                                                          CrossAxisAlignment.start,
                                                                          mainAxisAlignment:
                                                                          MainAxisAlignment.start,
                                                                          children: [
                                                                            Container(
                                                                              width: getHorizontalSize(
                                                                                115.00,
                                                                              ),
                                                                              margin: getMargin(
                                                                                left: 15,
                                                                                top: 11,
                                                                                right: 15,
                                                                              ),
                                                                              child: Text(
                                                                                product.data!.collections!.nodes![1].products!.edges![index].node!.title.toString(),
                                                                                maxLines: null,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtRobotoRegular12.copyWith(
                                                                                  letterSpacing: 0.18,
                                                                                  height: 1.17,
                                                                                ),
                                                                                softWrap: true,
                                                                                overflow: TextOverflow.ellipsis,
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              margin: getMargin(
                                                                                left: 15,
                                                                                top: 9,
                                                                                right: 15,
                                                                                bottom: 14,
                                                                              ),
                                                                              child: RichText(
                                                                                text: TextSpan(
                                                                                  children: [
                                                                                    TextSpan(
                                                                                      text: product.data!.collections!.nodes![1].products!.edges![index].node!.variants!.edges![0].node!.price.toString(),
                                                                                      style: TextStyle(
                                                                                        color: ColorConstant.gray600,
                                                                                        fontSize: getFontSize(
                                                                                          12,
                                                                                        ),
                                                                                        fontFamily: 'Roboto',
                                                                                        fontWeight: FontWeight.w500,
                                                                                        letterSpacing: 0.18,
                                                                                        height: 1.00,
                                                                                      ),
                                                                                    ),
                                                                                    TextSpan(
                                                                                      text: ' ',
                                                                                      style: TextStyle(
                                                                                        color: ColorConstant.indigo900,
                                                                                        fontSize: getFontSize(
                                                                                          12,
                                                                                        ),
                                                                                        fontFamily: 'Roboto',
                                                                                        fontWeight: FontWeight.w400,
                                                                                        letterSpacing: 0.18,
                                                                                        height: 1.00,
                                                                                      ),
                                                                                    ),
                                                                                    TextSpan(
                                                                                      text: "0".tr,
                                                                                      style: TextStyle(
                                                                                        color: ColorConstant.indigo900,
                                                                                        fontSize: getFontSize(
                                                                                          12,
                                                                                        ),
                                                                                        fontFamily: 'Roboto',
                                                                                        fontWeight: FontWeight.w400,
                                                                                        letterSpacing: 0.18,
                                                                                        height: 1.00,
                                                                                        decoration: TextDecoration.lineThrough,
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                textAlign: TextAlign.left,
                                                                              ),
                                                                            ),
                                                                          ],
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
                                                    ),
                                                    Align(
                                                      alignment:
                                                      Alignment.topLeft,
                                                      child: Container(
                                                        height: getVerticalSize(
                                                          18.00,
                                                        ),
                                                        width:
                                                        getHorizontalSize(
                                                          39.00,
                                                        ),
                                                        margin: getMargin(
                                                          top: 14,
                                                          right: 10,
                                                          bottom: 14,
                                                        ),
                                                        child: Stack(
                                                          alignment: Alignment
                                                              .topRight,
                                                          children: [
                                                            Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child:
                                                              CommonImageView(
                                                                svgPath:
                                                                ImageConstant
                                                                    .imgTicket,
                                                                height:
                                                                getVerticalSize(
                                                                  58.00,
                                                                ),
                                                                width:
                                                                getHorizontalSize(
                                                                  39.00,
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                              Alignment
                                                                  .topRight,
                                                              child: Padding(
                                                                padding:
                                                                getPadding(
                                                                  left: 10,
                                                                  top: 4,
                                                                  right: 6,
                                                                  bottom: 0,
                                                                ),
                                                                child: Text(
                                                                  "lbl_34".tr,
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: AppStyle
                                                                      .txtRobotoBold10
                                                                      .copyWith(
                                                                    letterSpacing:
                                                                    0.18,
                                                                    height:
                                                                    1.00,
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
                                            ),
                                          );
                                        },
                                      ),
                                    ],
                                  );
                                }
                                return CircularProgressIndicator();
                              }),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: getVerticalSize(
                              392.00,
                            ),
                            width: size.width,
                            margin: getMargin(
                              top: 22,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    margin: getMargin(
                                      left: 17,
                                      right: 17,
                                      bottom: 10,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 2,
                                              right: 8,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "lbl_blogs".tr,
                                                  overflow:
                                                  TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium22
                                                      .copyWith(
                                                    letterSpacing: 0.18,
                                                    height: 1.00,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 3,
                                                    bottom: 4,
                                                  ),
                                                  child: Text(
                                                    "lbl_see_all".tr,
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRegular14Gray600
                                                        .copyWith(
                                                      letterSpacing: 0.18,
                                                      height: 1.00,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 15,
                                          ),
                                          child:FutureBuilder(
                                              future: homePagecontroller.fetchBlogs(),
                                              builder: (context, snapshot) {
                                                if(!snapshot.hasData)
                                                {
                                                  return Text("NO DATA");
                                                }
                                                else if(snapshot.connectionState==ConnectionState.waiting)
                                                {
                                                  return CircularProgressIndicator();
                                                }
                                                else{
                                                  var obj=snapshot.data as BlogModel;

                                                  return  ListView.builder(
                                                    physics:
                                                    NeverScrollableScrollPhysics(),
                                                    shrinkWrap: true,
                                                    itemCount: obj.data?.articles?.edges?.length??0,
                                                    itemBuilder: (context, index) {
                                                      BlogNode? model = obj.data?.articles?.edges?[index].node;
                                                      return HomeScreen1ItemWidget(
                                                        model??BlogNode(),
                                                      );
                                                    },
                                                  );
                                                }
                                              }
                                          ),

                                        ),
                                      ],
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
                              left: 36,
                              top: 35,
                              right: 36,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgHome20X18,
                              height: getVerticalSize(
                                20.00,
                              ),
                              width: getHorizontalSize(
                                18.00,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
