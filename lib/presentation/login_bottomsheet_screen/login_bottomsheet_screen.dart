import 'package:saturn_flutter/presentation/login_screen/login_screen.dart';

import 'controller/login_bottomsheet_controller.dart';
import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';
import 'package:saturn_flutter/widgets/custom_button.dart';

class LoginBottomsheetScreen extends GetWidget<LoginBottomsheetController> {
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: size.width,
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray600)),
                                Container(
                                    height: getVerticalSize(700.00),
                                    width: size.width,
                                    child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(768.00),
                                                  width:
                                                      getHorizontalSize(374.00),
                                                  margin: getMargin(
                                                      left: 1, bottom: 1),
                                                  decoration: AppDecoration
                                                      .fillGray60066,
                                                  child: Stack(children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 97,
                                                                top: 331,
                                                                right: 97,
                                                                bottom: 200),
                                                            child: CommonImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgLogosatrun162X179,
                                                                height:
                                                                    getVerticalSize(
                                                                        62.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        179.00))))
                                                  ]))),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Container(
                                                  margin: getMargin(top: 10),
                                                  decoration: AppDecoration
                                                      .fillWhiteA700
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .customBorderTL40),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    4.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    62.00),
                                                            margin: getMargin(
                                                                left: 149,
                                                                top: 18,
                                                                right: 149),
                                                            decoration: BoxDecoration(
                                                                color:
                                                                    ColorConstant
                                                                        .gray600,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(2.00)))),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            24,
                                                                        top: 35,
                                                                        right:
                                                                            24),
                                                                child: Text(
                                                                    "msg_start_your_well"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRomanBold22
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                0.18,
                                                                            height:
                                                                                1.00)))),
                                                        CustomButton(
                                                            width: 326,
                                                            text:
                                                                "lbl_log_in".tr,
                                                            margin: getMargin(
                                                                left: 24,
                                                                top: 29,
                                                                right: 24),
                                                            onTap:
                                                            ()  {
                                                              Get.to(() => LoginScreen());
                                                            },
                                                            alignment: Alignment
                                                                .center),
                                                        CustomButton(
                                                            width: 326,
                                                            text:
                                                                "msg_continue_as_gue"
                                                                    .tr,
                                                            margin: getMargin(
                                                                left: 24,
                                                                top: 16,
                                                                right: 24,
                                                                bottom: 20),
                                                            variant: ButtonVariant
                                                                .FillPink101,
                                                            onTap:
                                                                onTapBtnContinueasgue,
                                                            alignment: Alignment
                                                                .center)
                                                      ])))
                                        ]))
                              ])))
                ]))));
  }

  onTapBtnContinueasgue() {
    Get.toNamed(AppRoutes.homepageScreen);

  }

  loginButton() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}
