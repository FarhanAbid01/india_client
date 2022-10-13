import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'dart:developer';
import 'package:get/get.dart';

import 'package:saturn_flutter/core/utils/color_constant.dart';
import 'package:saturn_flutter/heights_widths.dart';
import 'package:saturn_flutter/presentation/cart_screen/cart_screen.dart';
import 'package:saturn_flutter/presentation/cart_screen/controller/cart_controller.dart';
import 'package:saturn_flutter/presentation/homepage_screen/controller/homepage_controller.dart';
import 'package:saturn_flutter/presentation/homepage_screen/models/homepage_model.dart';
import 'package:saturn_flutter/presentation/homepage_screen/models/product_model.dart';
import 'package:saturn_flutter/presentation/product_detail_screen/controller/product_detail_controller.dart';
import 'package:saturn_flutter/presentation/product_detail_screen/models/cart_id_model.dart';
import 'package:saturn_flutter/presentation/product_detail_screen/models/product_page_item_model.dart';
import 'package:saturn_flutter/presentation/product_detail_screen/models/sliderfoamingfacewa_item_model.dart';
import 'package:saturn_flutter/presentation/product_detail_screen/widgets/product_page_item_widget.dart';
import 'package:saturn_flutter/presentation/product_detail_screen/widgets/sliderfoamingfacewa_item_widget.dart';
import 'package:saturn_flutter/widgets/custom_button.dart';
import 'package:saturn_flutter/widgets/custom_text_form_field.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/app_export.dart';

class ProductDetailUpdates extends StatefulWidget {
  PurpleNode? productNode;

  ProductDetailUpdates( this.productNode);

  @override
  State<ProductDetailUpdates> createState() => _ProductDetailUpdatesState();
}

class _ProductDetailUpdatesState extends State<ProductDetailUpdates> {

  var controller = Get.find<ProductDetailController>();
  bool isReadMore=false;
  List<String> tabsList=['lbl_description','lbl_benefits','msg_directions_to_u'];
  List<String> categoriesList=[
    'msg_2_alpha_arbuti2','msg_1_hyaluronic_a','msg_0_3_kojic_acid',
    'msg_2_alpha_arbuti2','msg_1_hyaluronic_a','msg_0_3_kojic_acid',
  ];

  int selectedTab=0;
  // int quantity=0;

  var homePagecontroller = Get.find<HomepageController>();

  final CartController cartController = Get.find();
  int _currentPage = 0;
  Timer? _timer;
  PageController pageController = PageController(
    initialPage: 0,);
  @override
  void initState() {
    super.initState();
    cartController.addToCartProducts.add(ProductModel(node: widget.productNode,quantity: 1));
    _timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < (widget.productNode?.images?.edges?.length??0)) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: ColorConstant.pink100,
      extendBodyBehindAppBar: true,
      extendBody: true,
      bottomNavigationBar: Container(
        height: Get.height*.055,
        child: Align(
            alignment: Alignment.centerRight,
            child: Container(
                padding: EdgeInsets.only(left: 5.w),
                decoration: AppDecoration.fillGray600.copyWith(
                    borderRadius:
                    BorderRadiusStyle.customBorderTL20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: (){
                          cartController.addToCartProducts.forEach((element) {
                            if(element.quantity>0)
                              {
                                cartController.subTotal=cartController.subTotal.value.obs+(double.parse(element.node?.variants?.edges?[0].node?.price??"")*element.quantity);
                              }
                          });
                          if(cartController.cartIDList.isEmpty)
                            {
                              Get.snackbar("Oops!", "Cart is Empty");
                            }
                          else{

                            Get.to(CartScreen(false),);
                            // PersistentNavBarNavigator.pushNewScreen(
                            //   Get.context!,
                            //   screen:CartScreen(false),
                            //   withNavBar: true, // OPTIONAL VALUE. True by default.
                            //   pageTransitionAnimation: PageTransitionAnimation.cupertino,
                            // );
                          }

                        },
                        child: Container(
                            height: getVerticalSize(35.00),
                            width: getHorizontalSize(39.00),
                            margin: getMargin(top: 3, bottom: 9),
                            child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Align(
                                      alignment:
                                      Alignment.bottomLeft,
                                      child: Padding(
                                          padding: getPadding(
                                              top: 10, right: 10),
                                          child: CommonImageView(
                                              svgPath: ImageConstant
                                                  .imgCart,
                                              height:
                                              getSize(25.00),
                                              width:
                                              getSize(25.00)))),
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
                                          child:
                                          Text("${cartController.addToCartProducts.where((element) => element.quantity>0).toList().length}",
                                              overflow: TextOverflow
                                                  .ellipsis,
                                              textAlign:
                                              TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoMedium14WhiteA700
                                                  .copyWith())
                                          ))
                                ])),
                      ),
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
                                        height: getVerticalSize(
                                            24.00),
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
                                        height: getVerticalSize(
                                            24.00),
                                        width: getHorizontalSize(
                                            16.00))))
                          ]))
                    ]))),
      ),
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              Directionality(
                textDirection: TextDirection.ltr,
                child: SliverAppBar(
                  leading: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 25,
                        color: Colors.white,
                      )),
                  centerTitle: true,
                  // shape: ContinuousRectangleBorder(
                  //     borderRadius: BorderRadius.only(
                  //         bottomLeft: Radius.circular(47), bottomRight: Radius.circular(47))),
                  backgroundColor: ColorConstant.pink100,
                  expandedHeight: Get.height * .3,
                  // collapsedHeight: Get.height*.6,
                  actions: [],
                  floating: true,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    background: SizedBox(
                      height: Get.height * .38,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Padding(
                            padding: getPadding(left: 10, top: 52, bottom: 52),
                            child: PageView(
                              physics: const AlwaysScrollableScrollPhysics(),
                              controller: pageController,
                              children: List.generate(
                                  widget.productNode?.images?.edges?.length??0, (index) {

                                String model =
                                widget.productNode?.images?.edges?[index].node?.src??"";
                                print("________________IANGE:${model}");
                                return SliderfoamingfacewaItemWidget(model);
                              }),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(bottom: Get.height*.015),
                            child: SmoothPageIndicator(
                              count: widget.productNode?.images?.edges?.length??0,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                  spacing: 6,
                                  activeDotColor: ColorConstant.whiteA700,
                                  dotColor: ColorConstant.whiteA70077,
                                  dotHeight: getVerticalSize(8.00),
                                  dotWidth: getHorizontalSize(8.00)),
                              controller: pageController,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ];
          },
          body: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              color: Colors.white,
            ),
            child: SingleChildScrollView(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  h2,
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: Get.width*.06),
                    child: SizedBox(width: Get.width*.8,
                      child: Text(widget.productNode?.title??"",
                          maxLines: 2,
                          textAlign: TextAlign.left,
                          overflow: TextOverflow.ellipsis,
                          style: AppStyle.txtRobotoMedium22
                              .copyWith(letterSpacing: 0.18, height: 1.36)),
                    ),
                  ),
                  Padding(
                      padding: getPadding(left: 24, top: 28, right: 24),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(flex:7,
                              child: Container(
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Rs.${widget.productNode?.variants?.edges?[0].node?.price}",
                                            style: TextStyle(
                                                color: ColorConstant.gray600,
                                                fontSize: getFontSize(22),
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w500,
                                                letterSpacing: 0.18,
                                                height: 1)),
                                        TextSpan(
                                            text: ' ',
                                            style: TextStyle(
                                                color:
                                                    ColorConstant.indigo900,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 0.18,
                                                height: 0.86)),
                                        TextSpan(
                                            text:  "${widget.productNode?.variants?.edges?[0].node?.compareAtPrice}",
                                            style: TextStyle(
                                                color:
                                                    ColorConstant.indigo900,
                                                fontSize: getFontSize(12),
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 0.18,
                                                height: 1.00,
                                                decoration: TextDecoration
                                                    .lineThrough))
                                      ]),
                                      textAlign: TextAlign.left)),
                            ),
                            Expanded(flex:3,
                              child: Text("lbl_quantity".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoMedium14
                                      .copyWith(letterSpacing: 0.42,height:1.5)),
                            ),
                            Expanded(flex:3,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          if(cartController.addToCartProducts.where((ele) => ele.node?.id==widget.productNode?.id).first.quantity > 0)
                                            {
                                              cartController.addToCartProducts.where((ele) => ele.node?.id==widget.productNode?.id).first.quantity
                                              =cartController.addToCartProducts.where((ele) => ele.node?.id==widget.productNode?.id).first.quantity-1;

                                            }
                                        });
                                      },
                                      child: Container(
                                          height: getVerticalSize(25.00),
                                          width: getHorizontalSize(28.00),
                                          decoration: BoxDecoration(
                                            border:Border.all(color: ColorConstant.pink100)
                                          ),
                                          child: Icon(Icons.remove,size:10)),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                        height: getVerticalSize(25.00),
                                        width: getHorizontalSize(28.00),
                                        decoration: AppDecoration.outlinePink103,
                                        child: Center(
                                          child: Text("${cartController.addToCartProducts.where((ele) => ele.node?.id==widget.productNode?.id).first.quantity}",
                                              overflow:
                                              TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoBold14Indigo900
                                                  .copyWith(
                                                  letterSpacing: 0.50)),
                                        )),
                                  ),
                                  Expanded(
                                    child:GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          if(cartController.addToCartProducts.where((ele) => ele.node?.id==widget.productNode?.id).first.quantity<100)
                                          {
                                            cartController.addToCartProducts.where((ele) => ele.node?.id==widget.productNode?.id).first.quantity=
                                                cartController.addToCartProducts.where((ele) => ele.node?.id==widget.productNode?.id).first.quantity+1;
                                          }
                                        });
                                      },
                                      child: Container(
                                          height: getVerticalSize(25.00),
                                          width: getHorizontalSize(28.00),
                                          decoration: BoxDecoration(
                                              border:Border.all(color: ColorConstant.pink100)
                                          ),
                                          child: Icon(Icons.add,size:10)),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ])),
                  Container(
                      width: double.infinity,
                      margin: getMargin(left: 24, top: 18, right: 24),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              getHorizontalSize(15.00))),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomButton(
                                onTap: () async {
                                  if (cartController.addToCartProducts
                                      .where((element) =>
                                  element.node?.id ==
                                      widget.productNode?.id &&
                                      element.quantity > 0)
                                      .toList()
                                      .isNotEmpty) {
                                    Get.snackbar(
                                        "Success!", "Product added to cart");
                                    CartId cartId = await controller.createCart(
                                        widget.productNode?.variants?.edges?[0]
                                            .node?.id ??
                                            '',
                                        cartController.addToCartProducts
                                            .where((element) =>
                                        element.node?.id ==
                                            widget.productNode?.id &&
                                            element.quantity > 0)
                                            .first
                                            .quantity);
                                    log('this is my cart id${cartId.data?.cartCreate?.cart?.id}');
                                    cartController.cartIDList.value =
                                        cartId.data?.cartCreate?.cart?.id ?? '';
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CartScreen(false)));
                                  } else {
                                    Get.snackbar(
                                        "Oops!", "Please add product to cart");
                                  }
                                },
                                width: 326,
                                text: "lbl_buy_now".tr),
                            CustomButton(
                                onTap: () async {
                                  if (Constant.isCartCreated == false) {
                                    if (cartController.addToCartProducts
                                        .where((element) =>
                                    element.node?.id ==
                                        widget.productNode?.id &&
                                        element.quantity > 0)
                                        .toList()
                                        .isNotEmpty) {
                                      Get.snackbar(
                                          "Success!", "Product added to cart");
                                      CartId cartId = await controller.createCart(
                                          widget.productNode?.variants?.edges?[0]
                                              .node?.id ??
                                              '',
                                          cartController.addToCartProducts
                                              .where((element) =>
                                          element.node?.id ==
                                              widget.productNode?.id &&
                                              element.quantity > 0)
                                              .first
                                              .quantity);
                                      log('this is my cart id${cartId.data?.cartCreate?.cart?.id}');
                                      cartController.cartIDList.value =
                                          cartId.data?.cartCreate?.cart?.id ?? '';

                                      log('this is my cart id${cartId.data?.cartCreate?.cart?.id}');

                                      Get.snackbar(
                                          "Success!", "Product added to cart");
                                    } else {
                                      Get.snackbar(
                                          "Oops!", "Please add product to cart");
                                    }
                                  } else {
                                    await controller.addToCart(
                                        widget.productNode?.variants?.edges?[0]
                                            .node?.id ??
                                            '',
                                        cartController.addToCartProducts
                                            .where((element) =>
                                        element.node?.id ==
                                            widget.productNode?.id &&
                                            element.quantity > 0)
                                            .first
                                            .quantity,
                                        cartController.cartIDList.value);
                                  }
                                },
                                width: 326,
                                text: "lbl_add_to_cart".tr,
                                margin: getMargin(top: 16),
                                variant: ButtonVariant.FillPink101)
                          ])),
                  Container(
                      margin: getMargin(top: 23,),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              getHorizontalSize(12.50))),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children:List.generate(tabsList.length, (index) =>
                              tabsWidget(tabsList[index],index)))),

                 if( selectedTab==0)...[
                   Container(
                       width: getHorizontalSize(320.00),
                       margin: getMargin(left: 24, top: 22, right: 24),
                       child: Text( "${widget.productNode?.description?.replaceFirst("Description:", "")}",
                           maxLines: null,
                           textAlign: TextAlign.left,
                           style: AppStyle.txtRobotoRegular14.copyWith(
                               letterSpacing: 0.18, height: 1.43))),
                   Align(
                       alignment: Alignment.centerLeft,
                       child: Padding(
                           padding: getPadding(
                               left: 36, top: 15, right: 36, bottom: 10),
                           child: Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment: CrossAxisAlignment.center,
                               mainAxisSize: MainAxisSize.max,
                               children: [
                                 CommonImageView(
                                     svgPath: ImageConstant.imgRefresh,
                                     height: getVerticalSize(19.00),
                                     width: getHorizontalSize(18.00)),
                                 Padding(
                                     padding: getPadding(
                                         left: 10, top: 3, bottom: 1),
                                     child: Text("msg_our_products_ar".tr,
                                         overflow: TextOverflow.ellipsis,
                                         textAlign: TextAlign.left,
                                         style: AppStyle
                                             .txtRobotoMedium14Gray600
                                             .copyWith(
                                             letterSpacing: 0.18,
                                             height: 1.00))),

                               ]))),
                   Padding(
                     padding:  EdgeInsets.symmetric(horizontal: 8.w),
                     child: Wrap(
                       spacing: 10,
                       runSpacing: 10,
                       children:
                       List.generate(categoriesList.length, (index) =>
                       isReadMore==true?
                       categoriesTab(categoriesList[index]):
                       index<=2 ?
                       categoriesTab(categoriesList[index]):
                       index==3 && isReadMore==false?
                       GestureDetector(
                         onTap: (){
                           setState(() {
                             isReadMore=true;
                           });
                         },
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
                                 height: 2,
                                 decoration:
                                 TextDecoration
                                     .underline)),
                       ):
                       SizedBox()

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
                                     alignment: Alignment.centerLeft,
                                     child: Padding(
                                         padding: getPadding(left: 29, top: 20, right: 29),
                                         child: Text("msg_you_may_also_li".tr,
                                             overflow: TextOverflow.ellipsis,
                                             textAlign: TextAlign.left,
                                             style: AppStyle.txtRobotoMedium22.copyWith(
                                                 fontSize: 14.sp,
                                                 letterSpacing: 0.18, height: 1.00)))),
                                 SizedBox(
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
                                 )
                               ],
                             );
                           }
                           return CircularProgressIndicator();
                         }),
                   ),
                   h10,
                 ]
                  else  if( selectedTab==1)...[

                   Align(
                       alignment: Alignment.centerLeft,
                       child: Padding(
                           padding: getPadding(left: 29, top: 20, right: 29),
                           child: Text("msg_you_may_also_li".tr,
                               overflow: TextOverflow.ellipsis,
                               textAlign: TextAlign.left,
                               style: AppStyle.txtRobotoMedium22.copyWith(
                                   fontSize: 14.sp,
                                   letterSpacing: 0.18, height: 1.00)))),
                   Padding(
                     padding: getPadding(
                       left: 30,
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
                   ),
                 ]
                 else ...[
                   Text("Directions")
                   ]

                ],
              ),
            ),
          ),

      ),
    );
  }
  Widget categoriesTab(String title)
  {
    return CustomButton(width: 118, text:title.tr, variant: ButtonVariant.FillPink50,
        shape: ButtonShape.RoundedBorder8, padding: ButtonPadding.PaddingAll8,
        fontStyle: ButtonFontStyle.RobotoMedium12);

  }
  Widget tabsWidget(String title,int index)
  {
    return Expanded(
      child: GestureDetector(
        onTap: (){
          setState(() {
            selectedTab=index;
          });
        },
        child: Column(
          children: [
            Text(title.tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoRegular14
                    .copyWith(letterSpacing: 0.18)),
            Container(
              decoration: BoxDecoration(
                border:Border(
                  bottom:BorderSide(
                      color:
                selectedTab==index?
                ColorConstant.pink100:
                Colors.transparent
                ,width: 2),)
              ),
            )
          ],
        ),
      ),
    );
  }
}
