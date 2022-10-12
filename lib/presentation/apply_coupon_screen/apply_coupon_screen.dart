import '../apply_coupon_screen/widgets/apply_coupons_item_widget.dart';
import 'controller/apply_coupon_controller.dart';
import 'models/apply_coupons_item_model.dart';
import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';
import 'package:saturn_flutter/widgets/custom_button.dart';

class ApplyCouponScreen extends GetWidget<ApplyCouponController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                margin: getMargin(left: 25, top: 28, right: 28),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          width: size.width,
                          margin: getMargin(left: 4, right: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapImgArrowleft();
                                    },
                                    child: Padding(
                                        padding: getPadding(top: 1, bottom: 4),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgArrowleft,
                                            height: getVerticalSize(12.00),
                                            width: getHorizontalSize(6.00)))),
                                Padding(
                                    padding: getPadding(left: 37),
                                    child: Text("lbl_apply_coupons".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoBold18
                                            .copyWith(letterSpacing: 0.50)))
                              ])),
                      Expanded(
                          child: SingleChildScrollView(
                              padding: getPadding(top: 24),
                              child: Container(
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                    Padding(
                                        padding: getPadding(left: 2),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                  height:
                                                      getVerticalSize(44.00),
                                                  width:
                                                      getHorizontalSize(220.00),
                                                  child: Card(
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      elevation: 0,
                                                      margin: EdgeInsets.all(0),
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      8.00))),
                                                      child: Stack(children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            13,
                                                                        top: 12,
                                                                        right:
                                                                            13,
                                                                        bottom:
                                                                            12),
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgSearchGray600,
                                                                    height:
                                                                        getVerticalSize(
                                                                            17.00),
                                                                    width: getHorizontalSize(
                                                                        16.00))))
                                                      ]))),
                                              CustomButton(
                                                  width: 89,
                                                  text: "lbl_apply".tr,
                                                  variant: ButtonVariant
                                                      .OutlineBlack900231_2,
                                                  shape: ButtonShape
                                                      .RoundedBorder8,
                                                  fontStyle: ButtonFontStyle
                                                      .DMSansBold15)
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 9, top: 32, right: 7),
                                        child: Obx(() => ListView.builder(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: controller
                                                .applyCouponModelObj
                                                .value
                                                .applyCouponsItemList
                                                .length,
                                            itemBuilder: (context, index) {
                                              ApplyCouponsItemModel model =
                                                  controller
                                                          .applyCouponModelObj
                                                          .value
                                                          .applyCouponsItemList[
                                                      index];
                                              return ApplyCouponsItemWidget(
                                                  model);
                                            }))),
                                    Container(
                                        height: getVerticalSize(88.00),
                                        width: getHorizontalSize(320.00),
                                        margin: getMargin(top: 1213, right: 1),
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      margin:
                                                          getMargin(left: 4),
                                                      decoration: AppDecoration
                                                          .outlineGray5003f
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder20),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                                height: getSize(
                                                                    88.00),
                                                                width: getSize(
                                                                    88.00),
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .pink100,
                                                                    borderRadius: BorderRadius.only(
                                                                        topLeft:
                                                                            Radius.circular(getHorizontalSize(
                                                                                20.00)),
                                                                        bottomLeft:
                                                                            Radius.circular(getHorizontalSize(20.00))))),
                                                            Container(
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            15,
                                                                        top: 14,
                                                                        right:
                                                                            15,
                                                                        bottom:
                                                                            20),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Container(
                                                                          width: getHorizontalSize(
                                                                              198.00),
                                                                          child: Text(
                                                                              "msg_home_remedies_f".tr,
                                                                              maxLines: null,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoMedium12Gray600.copyWith(letterSpacing: 0.18, height: 1.67))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  4,
                                                                              right:
                                                                                  10),
                                                                          child: Text(
                                                                              "msg_by_saturn_by_gh".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRegular10.copyWith(letterSpacing: 0.18, height: 1.40)))
                                                                    ]))
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          20.00),
                                                      width: getHorizontalSize(
                                                          39.00),
                                                      margin: getMargin(
                                                          top: 14,
                                                          right: 10,
                                                          bottom: 14),
                                                      child: Card(
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          elevation: 0,
                                                          margin:
                                                              EdgeInsets.all(0),
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          2.00))),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                1,
                                                                            bottom:
                                                                                1),
                                                                        child: ClipRRect(
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                                2.00)),
                                                                            child: CommonImageView(
                                                                                svgPath: ImageConstant.imgTicket18X40,
                                                                                height: getVerticalSize(18.00),
                                                                                width: getHorizontalSize(39.00))))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                9,
                                                                            right:
                                                                                10),
                                                                        child: Text(
                                                                            "lbl_skin"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtRobotoRegular10Indigo900.copyWith(letterSpacing: 0.18, height: 2.00))))
                                                              ]))))
                                            ]))
                                  ]))))
                    ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
