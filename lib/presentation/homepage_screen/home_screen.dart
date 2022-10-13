import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:saturn_flutter/presentation/homepage_screen/controller/homepage_controller.dart';
import 'package:saturn_flutter/presentation/homepage_screen/models/blog_model.dart';
import 'package:saturn_flutter/presentation/homepage_screen/models/homepage_model.dart';
import 'package:saturn_flutter/presentation/homepage_screen/widgets/drawer_widget.dart';
import 'package:saturn_flutter/presentation/product_detail_screen/product_detail.dart';
import 'package:saturn_flutter/presentation/product_detail_screen/widgets/product_page_item_widget.dart';
import 'package:url_launcher/url_launcher.dart';
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
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _key,
        drawer: DrawerWidget(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: Obx(() => homePagecontroller.selectedBottomNavIndex.value == 0
              ? Container(
                  width: size.width,
                  margin: getMargin(
                    left: 25,
                    right: 25,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _key.currentState!.openDrawer();
                        },
                        child: CommonImageView(
                          svgPath: ImageConstant.imgGrid14X15,
                          height: getVerticalSize(
                            14.00,
                          ),
                          width: getHorizontalSize(
                            15.00,
                          ),
                        ),
                      ),
                      CommonImageView(
                        imagePath: ImageConstant.imgLogosatrun1,
                        height: getVerticalSize(
                          57.00,
                        ),
                      ),
                      CommonImageView(
                        svgPath: ImageConstant.imgSearch,
                        height: getSize(
                          17.00,
                        ),
                        width: getSize(
                          17.00,
                        ),
                      ),
                    ],
                  ),
                )
              : SizedBox()),
        ),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: CommonImageView(
                                            svgPath:
                                                ImageConstant.imgMusic65X65,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                          // Align(
                          //   alignment: Alignment.centerLeft,
                          //   child: Padding(
                          //     padding: getPadding(
                          //       left: 27,
                          //       top: 26,
                          //       right: 27,
                          //     ),
                          //     child: Text(
                          //       "msg_previously_orde".tr,
                          //       overflow: TextOverflow.ellipsis,
                          //       textAlign: TextAlign.left,
                          //       style: AppStyle.txtRobotoMedium22.copyWith(),
                          //     ),
                          //   ),
                          // ),
                          // Align(
                          //   alignment: Alignment.center,
                          //   child: Container(
                          //     margin: getMargin(
                          //       left: 15,
                          //       top: 15,
                          //       right: 15,
                          //     ),
                          //     decoration:
                          //         AppDecoration.outlineBlack9001e.copyWith(
                          //       borderRadius: BorderRadiusStyle.roundedBorder16,
                          //     ),
                          //     child: Row(
                          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //       crossAxisAlignment: CrossAxisAlignment.center,
                          //       mainAxisSize: MainAxisSize.max,
                          //       children: [
                          //         Padding(
                          //           padding: getPadding(
                          //             left: 10,
                          //             top: 9,
                          //             bottom: 10,
                          //           ),
                          //           child: Row(
                          //             crossAxisAlignment:
                          //                 CrossAxisAlignment.center,
                          //             mainAxisSize: MainAxisSize.max,
                          //             children: [
                          //               CustomIconButton(
                          //                 height: 60,
                          //                 width: 60,
                          //                 variant: IconButtonVariant.FillPink100,
                          //                 shape: IconButtonShape.RoundedBorder15,
                          //                 padding: IconButtonPadding.PaddingAll5,
                          //                 child: CommonImageView(
                          //                   imagePath:
                          //                       ImageConstant.imgWhiteandblack,
                          //                 ),
                          //               ),
                          //               Container(
                          //                 margin: getMargin(
                          //                   left: 14,
                          //                   top: 6,
                          //                   bottom: 4,
                          //                 ),
                          //                 child: Column(
                          //                   mainAxisSize: MainAxisSize.min,
                          //                   crossAxisAlignment:
                          //                       CrossAxisAlignment.start,
                          //                   mainAxisAlignment:
                          //                       MainAxisAlignment.start,
                          //                   children: [
                          //                     Container(
                          //                       width: getHorizontalSize(
                          //                         140.00,
                          //                       ),
                          //                       child: Text(
                          //                         "msg_foaming_face_wa".tr,
                          //                         maxLines: null,
                          //                         textAlign: TextAlign.left,
                          //                         style: AppStyle
                          //                             .txtRobotoRegular12
                          //                             .copyWith(
                          //                           letterSpacing: 0.18,
                          //                           height: 1.17,
                          //                         ),
                          //                       ),
                          //                     ),
                          //                     Container(
                          //                       margin: getMargin(
                          //                         top: 9,
                          //                         right: 10,
                          //                       ),
                          //                       child: RichText(
                          //                         text: TextSpan(
                          //                           children: [
                          //                             TextSpan(
                          //                               text: "lbl_rs_699".tr,
                          //                               style: TextStyle(
                          //                                 color: ColorConstant
                          //                                     .gray600,
                          //                                 fontSize: getFontSize(
                          //                                   14,
                          //                                 ),
                          //                                 fontFamily: 'Roboto',
                          //                                 fontWeight:
                          //                                     FontWeight.w500,
                          //                                 letterSpacing: 0.18,
                          //                                 height: 0.86,
                          //                               ),
                          //                             ),
                          //                             TextSpan(
                          //                               text: ' ',
                          //                               style: TextStyle(
                          //                                 color: ColorConstant
                          //                                     .indigo900,
                          //                                 fontSize: getFontSize(
                          //                                   14,
                          //                                 ),
                          //                                 fontFamily: 'Roboto',
                          //                                 fontWeight:
                          //                                     FontWeight.w400,
                          //                                 letterSpacing: 0.18,
                          //                                 height: 0.86,
                          //                               ),
                          //                             ),
                          //                             TextSpan(
                          //                               text: "lbl_rs_999".tr,
                          //                               style: TextStyle(
                          //                                 color: ColorConstant
                          //                                     .indigo900,
                          //                                 fontSize: getFontSize(
                          //                                   10,
                          //                                 ),
                          //                                 fontFamily: 'Roboto',
                          //                                 fontWeight:
                          //                                     FontWeight.w400,
                          //                                 letterSpacing: 0.18,
                          //                                 height: 1.20,
                          //                                 decoration:
                          //                                     TextDecoration
                          //                                         .lineThrough,
                          //                               ),
                          //                             ),
                          //                           ],
                          //                         ),
                          //                         textAlign: TextAlign.left,
                          //                       ),
                          //                     ),
                          //                   ],
                          //                 ),
                          //               ),
                          //             ],
                          //           ),
                          //         ),
                          //         CustomIconButton(
                          //           height: 44,
                          //           width: 44,
                          //           margin: getMargin(
                          //             top: 18,
                          //             right: 17,
                          //             bottom: 17,
                          //           ),
                          //           variant: IconButtonVariant.OutlineBlack90023,
                          //           shape: IconButtonShape.RoundedBorder15,
                          //           padding: IconButtonPadding.PaddingAll13,
                          //           child: CommonImageView(
                          //             svgPath: ImageConstant.imgCart44X44,
                          //           ),
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          // ),
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
                                    return Text('No Data');
                                  } else if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    return CircularProgressIndicator();
                                  } else {
                                    log('this is my data ' +
                                        snapshot.data.toString());
                                    var product = (snapshot.data ??
                                        HomepageModel) as HomepageModel;

                                    log('this is my lenght ${product.data?.collections?.nodes?.length}');
                                    print('homepagedata= $product');
                                    return Column(
                                      children: [
                                        Column(
                                            children: List.generate(
                                          product.data?.collections?.nodes
                                                  ?.length ??
                                              0,
                                          (Firstindex) => Column(
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
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding: getPadding(
                                                          bottom: 3,
                                                        ),
                                                        child: Text(
                                                          product
                                                                  .data
                                                                  ?.collections
                                                                  ?.nodes?[
                                                                      Firstindex]
                                                                  .title ??
                                                              '',
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
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
                                                            // PersistentNavBarNavigator
                                                            //     .pushNewScreen(
                                                            //   context,
                                                            //   screen:
                                                            //       ProductListingScreen(
                                                            //     product:
                                                            //         product,
                                                            //   ),
                                                            //   withNavBar:
                                                            //       true, // OPTIONAL VALUE. True by default.
                                                            //   pageTransitionAnimation:
                                                            //       PageTransitionAnimation
                                                            //           .cupertino,
                                                            // );
                                                          },
                                                          child: Text(
                                                            "lbl_see_all".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoRegular14Gray600
                                                                .copyWith(
                                                              letterSpacing:
                                                                  0.18,
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
                                                crossAxisSpacing:
                                                    getHorizontalSize(
                                                  16.00,
                                                ),
                                                mainAxisSpacing:
                                                    getHorizontalSize(
                                                  16.00,
                                                ),
                                                staggeredTileBuilder: (index) {
                                                  return StaggeredTile.fit(2);
                                                },
                                                itemCount: product
                                                    .data!
                                                    .collections!
                                                    .nodes![Firstindex]
                                                    .products!
                                                    .edges!
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  return ProductPageItemWidget(
                                                      product
                                                          .data!
                                                          .collections!
                                                          .nodes![Firstindex]
                                                          .products!
                                                          .edges![index],
                                                      product
                                                          .data!
                                                          .collections!
                                                          .nodes![Firstindex]
                                                          .products!
                                                          .edges![index]
                                                          .node!);
                                                },
                                              ),
                                            ],
                                          ),
                                        ))
                                      ],
                                    );
                                  }
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
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        log("_____________HERE");
                                                        launchUrl(Uri.parse(
                                                            "https://prex-prex-prex.myshopify.com/blogs"));
                                                      },
                                                      child: Text(
                                                        "lbl_see_all".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
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
                                          Padding(
                                            padding: getPadding(
                                              top: 15,
                                            ),
                                            child: FutureBuilder(
                                                future: homePagecontroller
                                                    .fetchBlogs(),
                                                builder: (context, snapshot) {
                                                  if (!snapshot.hasData) {
                                                    return Text("NO DATA");
                                                  } else if (snapshot
                                                          .connectionState ==
                                                      ConnectionState.waiting) {
                                                    return CircularProgressIndicator();
                                                  } else {
                                                    var obj = snapshot.data
                                                        as BlogModel;

                                                    return ListView.builder(
                                                      physics:
                                                          NeverScrollableScrollPhysics(),
                                                      shrinkWrap: true,
                                                      itemCount: obj
                                                              .data
                                                              ?.articles
                                                              ?.edges
                                                              ?.length ??
                                                          0,
                                                      itemBuilder:
                                                          (context, index) {
                                                        BlogNode? model = obj
                                                            .data
                                                            ?.articles
                                                            ?.edges?[index]
                                                            .node;
                                                        return GestureDetector(
                                                          onTap: () {
                                                            log("_____________HERE");
                                                            launchUrl(Uri.parse(obj
                                                                    .data
                                                                    ?.articles
                                                                    ?.edges?[
                                                                        index]
                                                                    .node
                                                                    ?.onlineStoreUrl ??
                                                                ""));
                                                          },
                                                          child:
                                                              HomeScreen1ItemWidget(
                                                            model ?? BlogNode(),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  }
                                                }),
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
      ),
    );
  }
}
