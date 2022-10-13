import 'dart:developer';


import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:saturn_flutter/heights_widths.dart';
import 'package:saturn_flutter/presentation/add_new_address_screen/all_user_info.dart';
import 'package:saturn_flutter/presentation/cart_screen/controller/cart_controller.dart';
import 'package:saturn_flutter/presentation/cart_screen/models/cart_detail_model.dart';
import 'package:saturn_flutter/presentation/order_placed_screen/order_placed_screen.dart';
import 'package:saturn_flutter/presentation/payment_online_screen/payment_online_screen.dart';
import 'package:saturn_flutter/presentation/payment_screen/razor_pay.dart';

import 'controller/payment_controller.dart';
import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';
import 'package:saturn_flutter/widgets/custom_button.dart';
import 'package:saturn_flutter/widgets/custom_radio_button.dart';

class PaymentScreen extends StatefulWidget {
  AllUserInfo? userInfo;
  CartDetailModel? cart;
  PaymentScreen(this.userInfo,this.cart);
  
  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  var controller = Get.find<PaymentController>();
  final CartController cartController = Get.find();

  List<String> paymentTitles=[
    "Razor Pay",
    // "lbl_phonepay","lbl_paytm","lbl_bank_transfer","msg_credit_card_or"
  ];
  List<String> paymentImgs=[
    ImageConstant.imgImage48,
    // ImageConstant.imgPhonepay1,ImageConstant.imgUnknown1,ImageConstant.imgVolume, ImageConstant.imgFolder,
  ];
  Razorpay? _razorpay;

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay?.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay?.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay?.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);

  }

  @override
  void dispose() {
    super.dispose();
    _razorpay?.clear();
  }

  void openCheckout() async {

    log("_____________________PAYMEN:${(double.parse(widget.cart?.data?.cart?.cost?.totalAmount?.amount??"0").toStringAsFixed(0))*100}");
    var options = {
      'key': 'rzp_test_In7ZBG899z32d9',
      'amount': "${(double.parse(widget.cart?.data?.cart?.cost?.totalAmount?.amount??"0")*100).toStringAsFixed(0)}",
      'name': "${widget.userInfo?.data?.customer?.firstName}",
      'currency': 'INR',
      'description': 'Payment',
      'prefill': {'contact': "Number", 'email': "${widget.userInfo?.data?.customer?.email}"},
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay?.open(options);
    } catch (e) {
      debugPrintStack();
      log("exception:${e.toString()}");
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    Get.snackbar("Success", response.paymentId.toString());
    Get.to(OrderPlacedScreen());
    // PersistentNavBarNavigator.pushNewScreen(
    //   Get.context!,
    //   screen:OrderPlacedScreen(),
    //   withNavBar: true, // OPTIONAL VALUE. True by default.
    //   pageTransitionAnimation: PageTransitionAnimation.cupertino,
    // );
    log("___________${"SUCCESS: " + response.paymentId.toString()}");

  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Get.snackbar("ERROR: " , response.code.toString() + " - " + response.message.toString(),);
    log("___________${"ERROR: " + response.code.toString() + " - " + response.message.toString()}");

  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    Get.snackbar( "EXTERNAL_WALLET: ",  response.walletName.toString());
    log("___________${"EXTERNAL_WALLET: " + response.walletName.toString()}");
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text("lbl_payment".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style:
                  AppStyle.txtRobotoBold18.copyWith(letterSpacing: 0.50)),
              leading: GestureDetector(
                  onTap: () {
                    onTapImgArrowleft();
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: Get.width * .06),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: ColorConstant.indigo900,
                      size: 18,
                    ),
                  )),
            ),

            backgroundColor: ColorConstant.whiteA700,
            body: SingleChildScrollView(
              child: Container(
                  margin: getMargin(left: 24, top: 28, right: 25),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment:
                      CrossAxisAlignment.center,
                      mainAxisAlignment:
                      MainAxisAlignment.start,
                      children: [
                        topProgressIndicator(),
                        h5,
                        paymentMethodCards(0,"Cash on delivery"),
                        paymentMethodCards(1,"Pay Online"),
                        CustomButton(
                            onTap: (){
                              if(controller.selectedPaymentMethod.value==1)
                                {
                                  openCheckout();
                                }
                              else{
                                Get.to(OrderPlacedScreen());
                                // PersistentNavBarNavigator.pushNewScreen(
                                //   Get.context!,
                                //   screen:OrderPlacedScreen(),
                                //   withNavBar: true, // OPTIONAL VALUE. True by default.
                                //   pageTransitionAnimation: PageTransitionAnimation.cupertino,
                                // );
                              }
                            },
                            width: 326,
                            text: "lbl_place_my_order".tr,
                            margin: getMargin(top: 127),
                            fontStyle: ButtonFontStyle.DMSansBold15,
                            alignment: Alignment.centerLeft),

                      ])),
            )));
  }
  Widget paymentMethodCards(int index,String title)
  {
    return
      Obx(() =>  GestureDetector(
        onTap: (){
          controller.selectedPaymentMethod.value=index;
        },
        child: Container(
            width: double.infinity,
            margin: getMargin(
                left: 10, right: 10,bottom: 25),
            padding: getMargin(
                top: 25, bottom: 25,left: 10, right: 10),
            decoration: AppDecoration
                .outlineBlack9001e
                .copyWith(
                borderRadius: BorderRadiusStyle
                    .roundedBorder10),
            child:Column(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color:
                          controller.selectedPaymentMethod.value!=index?
                          ColorConstant.indigo900:
                          ColorConstant.pink100.withOpacity(.85),width:
                          controller.selectedPaymentMethod.value!=index?1:6)
                      ),
                      child: Container(
                        padding: EdgeInsets.all(controller.selectedPaymentMethod.value!=index?10:7),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white
                        ),
                      ),
                    ),
                    w3,
                    Text(title,style:  TextStyle(
                      color: ColorConstant.indigo900,
                      fontSize: getFontSize(
                        14,
                      ),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),)
                  ],
                ),
                controller.selectedPaymentMethod.value!=index || index==0?h0P1:  h2,
                controller.selectedPaymentMethod.value!=index || index==0?SizedBox():
                Column(
                  children: List.generate(paymentImgs.length, (index) =>
                      payemntTypes(0,paymentTitles[index],paymentImgs[index])),
                )
              ],
            )
        ),
      ));
  }
  Widget payemntTypes(int index,String title,String img,)
  {
    return  GestureDetector(
      onTap: (){
        controller.selectedPaymentTypes.value=index;
      },
      child: Container(
          decoration: AppDecoration.outlinePink100.copyWith(
              color: controller.selectedPaymentTypes.value==index?
              ColorConstant.pink100.withOpacity(.30):Colors.white,
              borderRadius:
              BorderRadiusStyle.roundedBorder6
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
            Padding(padding: getPadding(left: 11, top: 15, bottom: 14), child: CommonImageView(imagePath: img, height: getVerticalSize(23.00), width: getHorizontalSize(35.00))),
            Padding(padding: getPadding(left: 11, top: 20, bottom: 14), child: Text(title, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoBold15.copyWith(letterSpacing: 0.50)))
          ])),
    );
  }
  Widget topProgressIndicator()
  {
    return Column(
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
      ],
    );
  }
  onTapImgArrowleft() {
    Get.back();
  }
}

