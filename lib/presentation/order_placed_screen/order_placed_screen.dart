import 'package:lottie/lottie.dart';
import 'package:saturn_flutter/presentation/order_history/order_history.dart';

import 'controller/order_placed_controller.dart';
import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';
import 'package:saturn_flutter/widgets/custom_button.dart';

class OrderPlacedScreen extends GetWidget<OrderPlacedController> {
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
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: double.infinity,
                  decoration: AppDecoration.fillWhiteA700,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: double.infinity,
                          decoration: AppDecoration.fillWhiteA70033,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.back();
                                },
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    width: size.width,
                                    margin: getMargin(
                                      left: 25,
                                      top: 27,
                                      right: 25,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            top: 1,
                                            bottom: 2,
                                          ),
                                          child: CommonImageView(
                                            svgPath: ImageConstant.imgClose,
                                            height: getSize(
                                              14.00,
                                            ),
                                            width: getSize(
                                              14.00,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 33,
                                          ),
                                          child: Text(
                                            "lbl_order_placed".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoBold18
                                                .copyWith(
                                              letterSpacing: 0.50,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: getVerticalSize(
                                    30.00,
                                  ),
                                  width: getHorizontalSize(
                                    235.00,
                                  ),
                                  margin: getMargin(
                                    left: 20,
                                    top: 25,
                                    right: 20,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: CommonImageView(
                                          svgPath: ImageConstant
                                              .imgGroup18352Gray60030X235,
                                          height: getVerticalSize(
                                            30.00,
                                          ),
                                          width: getHorizontalSize(
                                            235.00,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 30,
                                            top: 15,
                                            right: 30,
                                            bottom: 14,
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                height: getVerticalSize(
                                                  1.00,
                                                ),
                                                width: getHorizontalSize(
                                                  73.00,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: ColorConstant.gray600,
                                                ),
                                              ),
                                              Container(
                                                height: getVerticalSize(
                                                  1.00,
                                                ),
                                                width: getHorizontalSize(
                                                  73.00,
                                                ),
                                                margin: getMargin(
                                                  left: 29,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: ColorConstant.gray600,
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
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: getPadding(
                                    left: 20,
                                    top: 11,
                                    right: 20,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 1,
                                        ),
                                        child: Text(
                                          "lbl_my_cart2".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRobotoMedium10
                                              .copyWith(
                                            letterSpacing: 0.50,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 33,
                                        ),
                                        child: Text(
                                          "msg_delivery_inform".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRobotoMedium10
                                              .copyWith(
                                            letterSpacing: 0.50,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 31,
                                          top: 1,
                                        ),
                                        child: Text(
                                          "lbl_payment".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRobotoMedium10
                                              .copyWith(
                                            letterSpacing: 0.50,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                  height: Get.height * .2,
                                  width: Get.height * .2,
                                  child: Lottie.asset(
                                    'assets/images/success.json',
                                  )),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: getPadding(
                                    left: 20,
                                    top: 40,
                                    right: 20,
                                  ),
                                  child: Text(
                                    "lbl_congratulation".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoBold24.copyWith(
                                      letterSpacing: 0.18,
                                      height: 1.00,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  width: getHorizontalSize(
                                    274.00,
                                  ),
                                  margin: getMargin(
                                    left: 20,
                                    top: 19,
                                    right: 20,
                                  ),
                                  child: Text(
                                    "msg_your_order_is_p".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.center,
                                    style: AppStyle.txtRobotoMedium18.copyWith(
                                      letterSpacing: 0.18,
                                      height: 1.67,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  width: double.infinity,
                                  margin: getMargin(
                                    left: 20,
                                    top: 25,
                                    right: 20,
                                    bottom: 83,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        15.00,
                                      ),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomButton(
                                        onTap: () {
                                          Get.to(OrderHistory());
                                        },
                                        width: 326,
                                        text: "lbl_order_history".tr,
                                        fontStyle: ButtonFontStyle.DMSansBold15,
                                      ),
                                      CustomButton(
                                        width: 326,
                                        text: "msg_continue_shoppi".tr,
                                        margin: getMargin(
                                          top: 16,
                                        ),
                                        variant: ButtonVariant.FillPink101,
                                        fontStyle: ButtonFontStyle.DMSansBold15,
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
            ],
          ),
        ),
      ),
    );
  }
}
