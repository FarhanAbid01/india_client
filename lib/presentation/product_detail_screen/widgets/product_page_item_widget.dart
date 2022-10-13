import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/svg.dart';

import 'package:saturn_flutter/presentation/homepage_screen/controller/homepage_controller.dart';
import 'package:saturn_flutter/presentation/homepage_screen/models/homepage_model.dart';
import 'package:saturn_flutter/presentation/product_detail_screen/product_detail.dart';

import '../controller/product_detail_controller.dart';
import '../models/product_page_item_model.dart';
import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';

// ignore: must_be_immutable
class ProductPageItemWidget extends StatelessWidget {
  ProductPageItemWidget(this.productPageItemModelObj,this.purpleNode);

  ProductsEdge productPageItemModelObj;
  PurpleNode purpleNode;

  var controller = Get.find<ProductDetailController>();
  var homePagecontroller = Get.find<HomepageController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("______________ERE");
        // Get.to(ProductDetailScreen());
        Get.to(ProductDetailUpdates(
            purpleNode));
        // PersistentNavBarNavigator.pushNewScreen(
        //   Get.context!,
        //   screen:ProductDetailUpdates(
        //       purpleNode),
        //   withNavBar: true, // OPTIONAL VALUE. True by default.
        //   pageTransitionAnimation: PageTransitionAnimation.cupertino,
        // );

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
                                            imageUrl: productPageItemModelObj.node!.variants!.edges![0].node!.image!.url.toString(),
                                            placeholder: (context, url) => CircularProgressIndicator(),
                                            errorWidget: (context, url, error) => Icon(Icons.error),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              shape:BoxShape.circle,
                                              color:Colors.white.withOpacity(.60),
                                            ),
                                            child:Obx(() =>GestureDetector(
                                                onTap: (){
                                                  homePagecontroller.whishlist.contains(productPageItemModelObj.node?.id)?
                                                  homePagecontroller.whishlist.remove(productPageItemModelObj.node?.id):
                                                  homePagecontroller.whishlist.add(productPageItemModelObj.node?.id??"");
                                                  log("_________FAV:${homePagecontroller.whishlist.length}");
                                                },
                                                child: Icon(Icons.favorite,color:
                                                homePagecontroller.whishlist.contains(productPageItemModelObj.node?.id)?
                                                Colors.red:
                                                Colors.white,size:20)))
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
                                          productPageItemModelObj.node!.title.toString(),
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
                                                text: productPageItemModelObj.node!.variants!.edges![0].node!.price.toString(),
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
              Padding(
                padding:  EdgeInsets.only(top:15),
                child: SvgPicture.asset(
                  ImageConstant
                      .imgTicket,
                  height: Get.height*.03,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top:22,left: 12),
                child: Text(
                  "lbl_34".tr,
                  overflow:
                  TextOverflow
                      .ellipsis,
                  textAlign:
                  TextAlign
                      .center,
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
            ],
          ),
        ),
      ),
    );
  }
}
