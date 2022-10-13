import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:saturn_flutter/heights_widths.dart';
import 'package:saturn_flutter/presentation/homepage_screen/models/homepage_model.dart';
import 'package:saturn_flutter/presentation/product_detail_screen/product_detail.dart';
import 'package:saturn_flutter/presentation/product_detail_screen/widgets/product_page_item_widget.dart';

import 'controller/product_listing_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:saturn_flutter/core/app_export.dart';
import 'package:saturn_flutter/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ProductListingScreen extends GetWidget<ProductListingController> {
  HomepageModel? product;
  ProductListingScreen({this.product});

  final productlistingController = Get.put(ProductListingController());


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: Container(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
            Container(
                width: size.width,
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                            width: size.width,
                            child: Container(
                                decoration: AppDecoration.fillWhiteA700,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: GestureDetector(
                                            onTap: () {
                                              onTapImgArrowleft();
                                            },
                                            child: Icon(Icons.arrow_back_ios,
                                                color: Colors.indigo,
                                                size: 18)),
                                      ),
                                      Expanded(
                                        flex: 5,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            hintText: "Search",
                                            prefixIcon: Icon(
                                              Icons.search,
                                              color: Colors.grey,
                                            ),
                                            fillColor:
                                                Colors.indigo.withOpacity(.10),
                                            filled: true,
                                            isDense: true,
                                            contentPadding: EdgeInsets.all(0),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.indigo
                                                      .withOpacity(.10)),
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.indigo
                                                      .withOpacity(.10)),
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.indigo
                                                      .withOpacity(.10)),
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                          ),
                                        ),
                                      ),
                                      w2,
                                      Expanded(
                                        flex: 1,
                                        child: CustomIconButton(
                                            height: 30,
                                            width: 30,
                                            margin:
                                                getMargin(top: 27, bottom: 27),
                                            variant: IconButtonVariant
                                                .OutlineGray5003f,
                                            padding:
                                                IconButtonPadding.PaddingAll5,
                                            child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgFavorite30X30)),
                                      )
                                    ])))),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          children: List.generate(
                              product?.data?.collections?.nodes?.length ?? 0,
                              (index) => index > 3
                                  ? SizedBox()
                                  : tabs(
                                      product?.data?.collections?.nodes?[index]
                                              .title ??
                                          '',
                                      index)),
                        ))
                  ],
                )),
            Expanded(
                child: SingleChildScrollView(
                    padding: getPadding(top: 12),
                    child: Obx(() => Container(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 33, top: 21, right: 33),
                                      child: Text(
                                          product
                                                  ?.data
                                                  ?.collections
                                                  ?.nodes?[
                                                      productlistingController
                                                          .selectedTab.value]
                                                  .title ??
                                              '',
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRobotoBold22
                                              .copyWith(letterSpacing: 0.50)))),
                              Padding(
                                  padding:
                                      getPadding(left: 14, top: 22, right: 14),
                                  child: StaggeredGridView.countBuilder(
                                      shrinkWrap: true,
                                      primary: false,
                                      crossAxisCount: 4,
                                      crossAxisSpacing:
                                          getHorizontalSize(16.00),
                                      mainAxisSpacing: getHorizontalSize(16.00),
                                      staggeredTileBuilder: (index) {
                                        return StaggeredTile.fit(2);
                                      },
                                      itemCount: product!
                                          .data!
                                          .collections!
                                          .nodes![productlistingController
                                              .selectedTab.value]
                                          .products!
                                          .edges!
                                          .length,
                                      itemBuilder: (context, index) {
                                        // log("_________________CAT:${product!.data!.collections!.nodes![2].title}");
                                        return ProductPageItemWidget(
                                            product!
                                                .data!
                                                .collections!
                                                .nodes![productlistingController
                                                    .selectedTab.value]
                                                .products!
                                                .edges![index],
                                            product!
                                                .data!
                                                .collections!
                                                .nodes![productlistingController
                                                    .selectedTab.value]
                                                .products!
                                                .edges![index]
                                                .node!);
                                      })),


                            ])))))
          ])),
    ));
  }

  Widget tabs(String title, int index) {
    return Expanded(
        child: Obx(
      () => GestureDetector(
        onTap: () {

          productlistingController.selectedTab.value = index;
        },
        child: Column(
          children: [
            Text(title,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoBold14.copyWith(
                  letterSpacing: 0.18,
                )),
            h0P9,
            Container(
              height: 2,
              color: productlistingController.selectedTab.value == index
                  ? ColorConstant.pink100
                  : Colors.transparent,
            )
          ],
        ),
      ),
    ));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
