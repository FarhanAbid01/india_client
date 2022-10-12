import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                      Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          decoration:
                              BoxDecoration(color: ColorConstant.gray600)),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getVerticalSize(768.00),
                              width: getHorizontalSize(374.00),
                              margin: getMargin(left: 1),
                              decoration: AppDecoration.fillGray60066,
                              child: Stack(children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 86,
                                            top: 323,
                                            right: 86,
                                            bottom: 20),
                                        child: CommonImageView(
                                            imagePath: ImageConstant
                                                .imgLogosatrun162X200,
                                            height: getVerticalSize(62.00),
                                            width: getHorizontalSize(200.00))))
                              ])))
                    ]))))));
  }
}
