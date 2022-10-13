import 'dart:developer';

import 'package:saturn_flutter/presentation/add_new_address_screen/all_user_info.dart';
import 'package:saturn_flutter/presentation/add_new_address_screen/controller/add_new_address_controller.dart';
import 'package:saturn_flutter/presentation/add_new_address_screen/models/add_new_address_model.dart';
import 'package:saturn_flutter/presentation/add_new_address_screen/widgets/default_address_widget.dart';
import 'package:saturn_flutter/presentation/cart_screen/models/cart_detail_model.dart';
import 'package:saturn_flutter/presentation/change_address_screen/controller/change_address_controller.dart';
import 'package:saturn_flutter/presentation/change_address_screen/models/change_address_item_model.dart';
import 'package:saturn_flutter/presentation/payment_screen/payment_screen.dart';

import '../change_address_screen/widgets/change_address_item_widget.dart';

import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';
import 'package:saturn_flutter/widgets/custom_button.dart';

class DeliveryInformationScreen extends GetWidget<ChangeAddressController> {
  AllUserInfo userInfo;
  CartDetailModel cart;
  DeliveryInformationScreen(this.userInfo,this.cart);

  final ChangeAddressController controller = Get.find();
  final AddNewAddressController addresscontroller = Get.find();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text("Delivery Information",
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
            body: Container(
                margin: getMargin(left: 24, top: 0, right: 25),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(30.00),
                          width: getHorizontalSize(235.00),
                          margin:
                              getMargin(left: 11, right: 11),
                          child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                    alignment:
                                        Alignment.centerLeft,
                                    child: CommonImageView(
                                        svgPath: ImageConstant
                                            .imgGroup18352,
                                        height:
                                            getVerticalSize(
                                                30.00),
                                        width:
                                            getHorizontalSize(
                                                235.00))),
                                Align(
                                    alignment:
                                        Alignment.center,
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
                                                MainAxisSize
                                                    .max,
                                            children: [
                                              Container(
                                                  height:
                                                      getVerticalSize(
                                                          1.00),
                                                  width: getHorizontalSize(
                                                      73.00),
                                                  decoration:
                                                      BoxDecoration(
                                                          color:
                                                              ColorConstant.gray600)),
                                              Container(
                                                  height:
                                                      getVerticalSize(
                                                          1.00),
                                                  width: getHorizontalSize(
                                                      73.00),
                                                  margin: getMargin(
                                                      left:
                                                          29),
                                                  decoration:
                                                      BoxDecoration(
                                                          color:
                                                              ColorConstant.gray500))
                                            ])))
                              ])),
                      Padding(
                          padding: getPadding(
                              left: 11, top: 11, right: 11),
                          child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.center,
                              crossAxisAlignment:
                                  CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding:
                                        getPadding(top: 1),
                                    child: Text(
                                        "lbl_my_cart2".tr,
                                        overflow: TextOverflow
                                            .ellipsis,
                                        textAlign:
                                            TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoMedium10
                                            .copyWith(
                                                letterSpacing:
                                                    0.50))),
                                Padding(
                                    padding:
                                        getPadding(left: 33),
                                    child: Text(
                                        "msg_delivery_inform"
                                            .tr,
                                        overflow: TextOverflow
                                            .ellipsis,
                                        textAlign:
                                            TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoMedium10
                                            .copyWith(
                                                letterSpacing:
                                                    0.50))),
                                Padding(
                                    padding: getPadding(
                                        left: 31, top: 1),
                                    child: Text(
                                        "lbl_payment".tr,
                                        overflow: TextOverflow
                                            .ellipsis,
                                        textAlign:
                                            TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoMedium10
                                            .copyWith(
                                                letterSpacing:
                                                    0.50)))
                              ])),
                      Padding(
                          padding: getPadding(left: 10, top: 10, right: 10),
                          child:  DefaultAddressWidget(userInfo,userInfo.data?.customer?.defaultAddress??DefaultAddress())),
                      Spacer(),
                      Spacer(),
                      CustomButton(
                          onTap: (){
                            Get.to(PaymentScreen(userInfo,cart));
                            // PersistentNavBarNavigator.pushNewScreen(
                            //   context,
                            //   screen:  PaymentScreen(userInfo,cart),
                            //   withNavBar: true, // OPTIONAL VALUE. True by default.
                            //   pageTransitionAnimation: PageTransitionAnimation.cupertino,
                            // );
                          },
                          width: 326,
                          text:"Continue",
                          margin: getMargin(top: 173),
                          fontStyle: ButtonFontStyle.DMSansBold15,
                          alignment: Alignment.centerLeft),
                      Spacer(),

                    ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
