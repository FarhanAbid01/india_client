import '../left_menu_screen/widgets/listprofile_item_widget.dart';
import '../left_menu_screen/widgets/staggeredwhiteandblack_one_item_widget.dart';
import 'controller/left_menu_controller.dart';
import 'models/listprofile_item_model.dart';
import 'models/staggeredwhiteandblack_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:saturn_flutter/core/app_export.dart';
import 'package:saturn_flutter/widgets/custom_icon_button.dart';

class LeftMenuScreen extends GetWidget<LeftMenuController> {
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
              Container(
                width: size.width,
                margin: getMargin(
                  left: 27,
                  top: 19,
                  right: 27,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 2,
                        bottom: 2,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgGrid,
                        height: getVerticalSize(
                          14.00,
                        ),
                        width: getHorizontalSize(
                          15.00,
                        ),
                      ),
                    ),
                    CommonImageView(
                      svgPath: ImageConstant.imgCart,
                      height: getSize(
                        20.00,
                      ),
                      width: getSize(
                        20.00,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SingleChildScrollView(
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: getVerticalSize(
                                856.00,
                              ),
                              width: size.width,
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 128,
                                        top: 10,
                                        right: 128,
                                        bottom: 10,
                                      ),
                                      child: CommonImageView(
                                        imagePath: ImageConstant.imgLogosatrun1,
                                        height: getVerticalSize(
                                          57.00,
                                        ),
                                        width: getHorizontalSize(
                                          118.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 27,
                                        top: 77,
                                        right: 27,
                                        bottom: 77,
                                      ),
                                      child: Text(
                                        "lbl_categories".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoMedium18
                                            .copyWith(),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 27,
                                        top: 227,
                                        right: 27,
                                        bottom: 227,
                                      ),
                                      child: Text(
                                        "msg_previously_orde".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoMedium18
                                            .copyWith(),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 21,
                                        top: 107,
                                        right: 21,
                                        bottom: 107,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            margin: getMargin(
                                              top: 1,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: CommonImageView(
                                                    svgPath:
                                                        ImageConstant.imgMusic,
                                                    height: getSize(
                                                      65.00,
                                                    ),
                                                    width: getSize(
                                                      65.00,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 21,
                                                    top: 10,
                                                    right: 21,
                                                  ),
                                                  child: Text(
                                                    "lbl_skin".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoMedium12
                                                        .copyWith(),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: getMargin(
                                              left: 24,
                                              top: 1,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgLocation,
                                                    height: getSize(
                                                      65.00,
                                                    ),
                                                    width: getSize(
                                                      65.00,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 21,
                                                    top: 10,
                                                    right: 21,
                                                  ),
                                                  child: Text(
                                                    "lbl_hair".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoMedium12
                                                        .copyWith(),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: getMargin(
                                              left: 24,
                                              top: 1,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: CommonImageView(
                                                    svgPath:
                                                        ImageConstant.imgUser,
                                                    height: getSize(
                                                      65.00,
                                                    ),
                                                    width: getSize(
                                                      65.00,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 8,
                                                    top: 10,
                                                    right: 9,
                                                  ),
                                                  child: Text(
                                                    "lbl_wellness".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoMedium12
                                                        .copyWith(),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: getMargin(
                                              left: 24,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgUser65X65,
                                                    height: getSize(
                                                      65.00,
                                                    ),
                                                    width: getSize(
                                                      65.00,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 17,
                                                    top: 11,
                                                    right: 17,
                                                  ),
                                                  child: Text(
                                                    "lbl_sleep".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoMedium12
                                                        .copyWith(),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      margin: getMargin(
                                        left: 17,
                                        top: 251,
                                        right: 17,
                                        bottom: 251,
                                      ),
                                      decoration: AppDecoration.outlineGray5003f
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder6,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              left: 13,
                                              top: 9,
                                              bottom: 9,
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  height: getVerticalSize(
                                                    61.00,
                                                  ),
                                                  width: getHorizontalSize(
                                                    54.00,
                                                  ),
                                                  child: Card(
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    elevation: 0,
                                                    margin: EdgeInsets.all(0),
                                                    color:
                                                        ColorConstant.pink100,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        getHorizontalSize(
                                                          4.00,
                                                        ),
                                                      ),
                                                    ),
                                                    child: Stack(
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                            padding: getPadding(
                                                              left: 10,
                                                              top: 7,
                                                              right: 10,
                                                              bottom: 6,
                                                            ),
                                                            child:
                                                                CommonImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgWhiteandblack,
                                                              height:
                                                                  getVerticalSize(
                                                                47.00,
                                                              ),
                                                              width:
                                                                  getHorizontalSize(
                                                                33.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: getMargin(
                                                    left: 17,
                                                    top: 6,
                                                    bottom: 5,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        width:
                                                            getHorizontalSize(
                                                          140.00,
                                                        ),
                                                        child: Text(
                                                          "msg_foaming_face_wa"
                                                              .tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRegular12
                                                              .copyWith(
                                                            letterSpacing: 0.18,
                                                            height: 1.17,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: getMargin(
                                                          top: 9,
                                                          right: 10,
                                                        ),
                                                        child: RichText(
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    "lbl_rs_699"
                                                                        .tr,
                                                                style:
                                                                    TextStyle(
                                                                  color: ColorConstant
                                                                      .gray600,
                                                                  fontSize:
                                                                      getFontSize(
                                                                    14,
                                                                  ),
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  letterSpacing:
                                                                      0.18,
                                                                  height: 0.86,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text: ' ',
                                                                style:
                                                                    TextStyle(
                                                                  color: ColorConstant
                                                                      .indigo900,
                                                                  fontSize:
                                                                      getFontSize(
                                                                    14,
                                                                  ),
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  letterSpacing:
                                                                      0.18,
                                                                  height: 0.86,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    "lbl_rs_999"
                                                                        .tr,
                                                                style:
                                                                    TextStyle(
                                                                  color: ColorConstant
                                                                      .indigo900,
                                                                  fontSize:
                                                                      getFontSize(
                                                                    10,
                                                                  ),
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  letterSpacing:
                                                                      0.18,
                                                                  height: 1.20,
                                                                  decoration:
                                                                      TextDecoration
                                                                          .lineThrough,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          CustomIconButton(
                                            height: 44,
                                            width: 44,
                                            margin: getMargin(
                                              left: 54,
                                              top: 17,
                                              right: 17,
                                              bottom: 18,
                                            ),
                                            variant: IconButtonVariant
                                                .OutlineBlack90023,
                                            shape:
                                                IconButtonShape.RoundedBorder15,
                                            padding:
                                                IconButtonPadding.PaddingAll13,
                                            child: CommonImageView(
                                              svgPath:
                                                  ImageConstant.imgCart44X44,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 15,
                                      top: 10,
                                      right: 15,
                                    ),
                                    child: Obx(
                                      () => StaggeredGridView.countBuilder(
                                        shrinkWrap: true,
                                        primary: false,
                                        crossAxisCount: 4,
                                        crossAxisSpacing: getHorizontalSize(
                                          16.00,
                                        ),
                                        mainAxisSpacing: getHorizontalSize(
                                          16.00,
                                        ),
                                        staggeredTileBuilder: (index) {
                                          return StaggeredTile.fit(2);
                                        },
                                        itemCount: controller
                                            .leftMenuModelObj
                                            .value
                                            .staggeredwhiteandblackOneItemList
                                            .length,
                                        itemBuilder: (context, index) {
                                          StaggeredwhiteandblackOneItemModel
                                              model = controller
                                                      .leftMenuModelObj
                                                      .value
                                                      .staggeredwhiteandblackOneItemList[
                                                  index];
                                          return StaggeredwhiteandblackOneItemWidget(
                                            model,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      margin: getMargin(
                                        left: 27,
                                        top: 353,
                                        right: 27,
                                        bottom: 353,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              right: 10,
                                            ),
                                            child: Text(
                                              "lbl_shop".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtRobotoMedium18
                                                  .copyWith(
                                                letterSpacing: 0.18,
                                                height: 1.00,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 12,
                                            ),
                                            child: Text(
                                              "lbl_skin_products".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtRobotoRegular14
                                                  .copyWith(
                                                letterSpacing: 0.18,
                                                height: 1.00,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 25,
                                        top: 386,
                                        right: 25,
                                        bottom: 386,
                                      ),
                                      child: Text(
                                        "lbl_see_all".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoRegular14Gray600
                                            .copyWith(
                                          letterSpacing: 0.18,
                                          height: 1.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 25,
                                        top: 30,
                                        right: 25,
                                        bottom: 30,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 4,
                                              bottom: 1,
                                            ),
                                            child: CommonImageView(
                                              svgPath:
                                                  ImageConstant.imgGrid14X15,
                                              height: getVerticalSize(
                                                14.00,
                                              ),
                                              width: getHorizontalSize(
                                                15.00,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 290,
                                              bottom: 2,
                                            ),
                                            child: CommonImageView(
                                              svgPath: ImageConstant.imgSearch,
                                              height: getSize(
                                                17.00,
                                              ),
                                              width: getSize(
                                                17.00,
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
                                        769.00,
                                      ),
                                      width: size.width,
                                      margin: getMargin(
                                        bottom: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        color: ColorConstant.black9007f,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      margin: getMargin(
                                        right: 10,
                                        bottom: 10,
                                      ),
                                      decoration: AppDecoration.fillWhiteA700,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              decoration:
                                                  AppDecoration.fillGray600,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 19,
                                                      top: 27,
                                                      bottom: 28,
                                                    ),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding: getPadding(
                                                            top: 1,
                                                          ),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                17.50,
                                                              ),
                                                            ),
                                                            child:
                                                                CommonImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgEllipse2,
                                                              height: getSize(
                                                                35.00,
                                                              ),
                                                              width: getSize(
                                                                35.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: getMargin(
                                                            left: 20,
                                                          ),
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
                                                              Padding(
                                                                padding:
                                                                    getPadding(
                                                                  left: 2,
                                                                  right: 10,
                                                                ),
                                                                child: Text(
                                                                  "lbl_john_doe"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRobotoRomanMedium14
                                                                      .copyWith(),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    getPadding(
                                                                  top: 6,
                                                                ),
                                                                child: Text(
                                                                  "msg_johndoe_gmail_c"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRobotoRomanRegular12
                                                                      .copyWith(),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 39,
                                                      right: 35,
                                                      bottom: 40,
                                                    ),
                                                    child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: getVerticalSize(
                                                        12.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        6.00,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 28,
                                                top: 26,
                                                right: 28,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding: getPadding(
                                                      bottom: 1,
                                                    ),
                                                    child: CommonImageView(
                                                      svgPath:
                                                          ImageConstant.imgHome,
                                                      height: getVerticalSize(
                                                        16.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        15.00,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 22,
                                                      top: 2,
                                                    ),
                                                    child: Text(
                                                      "lbl_home".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular14
                                                          .copyWith(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 27,
                                                top: 25,
                                                right: 27,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  CommonImageView(
                                                    svgPath:
                                                        ImageConstant.imgGroup,
                                                    height: getSize(
                                                      18.00,
                                                    ),
                                                    width: getSize(
                                                      18.00,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 20,
                                                      top: 1,
                                                      bottom: 1,
                                                    ),
                                                    child: Text(
                                                      "lbl_blogs".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular14
                                                          .copyWith(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 26,
                                                top: 25,
                                                right: 26,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgCart16X16,
                                                    height: getSize(
                                                      16.00,
                                                    ),
                                                    width: getSize(
                                                      16.00,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 21,
                                                      top: 1,
                                                      bottom: 1,
                                                    ),
                                                    child: Text(
                                                      "lbl_cart".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular14
                                                          .copyWith(),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: getMargin(
                                                      left: 10,
                                                      top: 1,
                                                      bottom: 1,
                                                    ),
                                                    padding: getPadding(
                                                      left: 5,
                                                      top: 2,
                                                      right: 5,
                                                      bottom: 2,
                                                    ),
                                                    decoration: AppDecoration
                                                        .txtFillRedA700
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtCircleBorder8,
                                                    ),
                                                    child: Text(
                                                      "lbl_2".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular10
                                                          .copyWith(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 28,
                                                top: 25,
                                                right: 28,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgUser16X16,
                                                    height: getSize(
                                                      16.00,
                                                    ),
                                                    width: getSize(
                                                      16.00,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 21,
                                                    ),
                                                    child: Text(
                                                      "lbl_settings".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular14
                                                          .copyWith(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 27,
                                                top: 26,
                                                right: 27,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 1,
                                                      bottom: 1,
                                                    ),
                                                    child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgFavorite15X16,
                                                      height: getVerticalSize(
                                                        15.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        16.00,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 20,
                                                    ),
                                                    child: Text(
                                                      "lbl_wishlist".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular14
                                                          .copyWith(),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: getMargin(
                                                      left: 10,
                                                    ),
                                                    padding: getPadding(
                                                      left: 5,
                                                      top: 2,
                                                      right: 5,
                                                      bottom: 2,
                                                    ),
                                                    decoration: AppDecoration
                                                        .txtFillRedA700
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtCircleBorder8,
                                                    ),
                                                    child: Text(
                                                      "lbl_2".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular10
                                                          .copyWith(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 27,
                                                top: 27,
                                                right: 27,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  CommonImageView(
                                                    svgPath:
                                                        ImageConstant.imgClock,
                                                    height: getSize(
                                                      16.00,
                                                    ),
                                                    width: getSize(
                                                      16.00,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 20,
                                                      top: 1,
                                                      bottom: 1,
                                                    ),
                                                    child: Text(
                                                      "lbl_order_history".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular14
                                                          .copyWith(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 29,
                                                top: 26,
                                                right: 29,
                                                bottom: 378,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgLocation17X13,
                                                    height: getVerticalSize(
                                                      17.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      13.00,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 22,
                                                      top: 1,
                                                      bottom: 1,
                                                    ),
                                                    child: Text(
                                                      "msg_manage_addresse".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular14
                                                          .copyWith(),
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
                          Padding(
                            padding: getPadding(
                              left: 25,
                              top: 16,
                              right: 25,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "lbl_blogs".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoMedium18.copyWith(
                                      letterSpacing: 0.18,
                                      height: 1.11,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                  ),
                                  child: Text(
                                    "lbl_see_all".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRegular14Gray600
                                        .copyWith(
                                      letterSpacing: 0.18,
                                      height: 1.43,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 25,
                              top: 15,
                              right: 17,
                            ),
                            child: Obx(
                              () => ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: controller.leftMenuModelObj.value
                                    .listprofileItemList.length,
                                itemBuilder: (context, index) {
                                  ListprofileItemModel model = controller
                                      .leftMenuModelObj
                                      .value
                                      .listprofileItemList[index];
                                  return ListprofileItemWidget(
                                    model,
                                  );
                                },
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: getVerticalSize(
                                81.00,
                              ),
                              width: size.width,
                              margin: getMargin(
                                top: 15,
                              ),
                              decoration: AppDecoration.outlineBlack90030,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: getPadding(
                                        top: 3,
                                        bottom: 10,
                                      ),
                                      child: CommonImageView(
                                        imagePath:
                                            ImageConstant.imgWhatsappimage,
                                        height: getVerticalSize(
                                          36.00,
                                        ),
                                        width: getHorizontalSize(
                                          375.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                left: 36,
                                top: 35,
                                right: 36,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgHome20X18,
                                height: getVerticalSize(
                                  20.00,
                                ),
                                width: getHorizontalSize(
                                  18.00,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
