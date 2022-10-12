import '../controller/apply_coupon_controller.dart';
import '../models/apply_coupons_item_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';
import 'package:saturn_flutter/widgets/custom_button.dart';

// ignore: must_be_immutable
class ApplyCouponsItemWidget extends StatelessWidget {
  ApplyCouponsItemWidget(this.applyCouponsItemModelObj);

  ApplyCouponsItemModel applyCouponsItemModelObj;

  var controller = Get.find<ApplyCouponController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 14.0,
        bottom: 14.0,
      ),
      decoration: AppDecoration.outlineBlack9001e.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: getPadding(
                left: 25,
                top: 3,
                right: 9,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: getMargin(
                      top: 15,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            228.00,
                          ),
                          child: Text(
                            "msg_flat_20_off_on".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoBold14Indigo900.copyWith(
                              letterSpacing: 0.50,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 19,
                            right: 10,
                          ),
                          child: Text(
                            "msg_valid_till_31st".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRegular14.copyWith(
                              letterSpacing: 0.50,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 5,
                      bottom: 64,
                    ),
                    child: Text(
                      "lbl_2_deal".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRegular14WhiteA700.copyWith(),
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
                left: 9,
                top: 15,
                right: 17,
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    height: getVerticalSize(
                      33.00,
                    ),
                    width: getHorizontalSize(
                      145.00,
                    ),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: getPadding(
                              top: 10,
                              right: 10,
                              bottom: 8,
                            ),
                            child: Text(
                              "lbl_2_deal".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRegular10WhiteA700
                                  .copyWith(),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: getPadding(
                              left: 10,
                            ),
                            child: DottedBorder(
                              color: ColorConstant.gray600,
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  1.00,
                                ),
                                top: getVerticalSize(
                                  1.00,
                                ),
                                right: getHorizontalSize(
                                  1.00,
                                ),
                                bottom: getVerticalSize(
                                  1.00,
                                ),
                              ),
                              strokeWidth: getHorizontalSize(
                                1.00,
                              ),
                              radius: Radius.circular(
                                6,
                              ),
                              borderType: BorderType.RRect,
                              dashPattern: [
                                2,
                                2,
                              ],
                              child: CustomButton(
                                width: 127,
                                text: "lbl_saturninaug".tr,
                                margin: getMargin(
                                  left: 10,
                                ),
                                variant: ButtonVariant.OutlineGray600,
                                shape: ButtonShape.RoundedBorder8,
                                padding: ButtonPadding.PaddingAll8,
                                fontStyle: ButtonFontStyle.RobotoRegular14,
                                alignment: Alignment.centerRight,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 10,
                      bottom: 8,
                    ),
                    child: Text(
                      "lbl_apply".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoBold14.copyWith(
                        letterSpacing: 0.18,
                        height: 1.00,
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
