import '../controller/product_listing_controller.dart';
import '../models/gridwhiteandblack_four_item_model.dart';
import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';

// ignore: must_be_immutable
class GridwhiteandblackFourItemWidget extends StatelessWidget {
  GridwhiteandblackFourItemWidget(this.gridwhiteandblackFourItemModelObj);

  GridwhiteandblackFourItemModel gridwhiteandblackFourItemModelObj;

  var controller = Get.find<ProductListingController>();

  @override
  Widget build(BuildContext context) {
    return Container(
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
            alignment: Alignment.center,
            child: Container(
              margin: getMargin(
                left: 4,
              ),
              decoration: AppDecoration.outlineBlack9001e12,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: getHorizontalSize(
                        160.00,
                      ),
                      decoration: AppDecoration.fillPink100.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              height: getVerticalSize(
                                119.00,
                              ),
                              width: getHorizontalSize(
                                108.00,
                              ),
                              margin: getMargin(
                                left: 13,
                                top: 10,
                                right: 13,
                              ),
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: getPadding(
                                        right: 10,
                                      ),
                                      child: CommonImageView(
                                        imagePath:
                                            ImageConstant.imgWhiteandblack,
                                        height: getVerticalSize(
                                          119.00,
                                        ),
                                        width: getHorizontalSize(
                                          85.00,
                                        ),
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
                                                svgPath:
                                                    ImageConstant.imgFavorite,
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
                                                color:
                                                    ColorConstant.whiteA70060,
                                                borderRadius:
                                                    BorderRadius.circular(
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
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: getHorizontalSize(
                                160.00,
                              ),
                              margin: getMargin(
                                top: 6,
                              ),
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderBL16,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                      "msg_foaming_face_wa".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtRobotoRegular12.copyWith(
                                        letterSpacing: 0.18,
                                        height: 1.17,
                                      ),
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
                                            text: "lbl_rs_699".tr,
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
                                            text: "lbl_rs_999".tr,
                                            style: TextStyle(
                                              color: ColorConstant.indigo900,
                                              fontSize: getFontSize(
                                                12,
                                              ),
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 0.18,
                                              height: 1.00,
                                              decoration:
                                                  TextDecoration.lineThrough,
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
            alignment: Alignment.topLeft,
            child: Container(
              height: getVerticalSize(
                18.00,
              ),
              width: getHorizontalSize(
                39.00,
              ),
              margin: getMargin(
                top: 14,
                right: 10,
                bottom: 14,
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CommonImageView(
                      svgPath: ImageConstant.imgTicket,
                      height: getVerticalSize(
                        18.00,
                      ),
                      width: getHorizontalSize(
                        39.00,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: getPadding(
                        left: 10,
                        top: 3,
                        right: 6,
                        bottom: 10,
                      ),
                      child: Text(
                        "lbl_34".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoBold10.copyWith(
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
        ],
      ),
    );
  }
}
