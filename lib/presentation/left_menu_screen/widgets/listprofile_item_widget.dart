import '../controller/left_menu_controller.dart';
import '../models/listprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';

// ignore: must_be_immutable
class ListprofileItemWidget extends StatelessWidget {
  ListprofileItemWidget(this.listprofileItemModelObj);

  ListprofileItemModel listprofileItemModelObj;

  var controller = Get.find<LeftMenuController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        88.00,
      ),
      width: getHorizontalSize(
        333.00,
      ),
      margin: getMargin(
        top: 6.0,
        bottom: 6.0,
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
              decoration: AppDecoration.outlineGray5003f.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    height: getVerticalSize(
                      88.00,
                    ),
                    width: getHorizontalSize(
                      91.00,
                    ),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: CommonImageView(
                            imagePath: ImageConstant.imgProfile,
                            height: getVerticalSize(
                              88.00,
                            ),
                            width: getHorizontalSize(
                              91.00,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: getVerticalSize(
                              88.00,
                            ),
                            width: getHorizontalSize(
                              91.00,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.pink1003a,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                  getHorizontalSize(
                                    20.00,
                                  ),
                                ),
                                bottomLeft: Radius.circular(
                                  getHorizontalSize(
                                    21.00,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 15,
                      top: 14,
                      right: 23,
                      bottom: 20,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            198.00,
                          ),
                          child: Text(
                            "msg_home_remedies_f".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoMedium12Gray600.copyWith(
                              letterSpacing: 0.18,
                              height: 1.67,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              top: 4,
                              right: 6,
                            ),
                            child: Text(
                              "msg_by_saturn_by_gh".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRegular10.copyWith(
                                letterSpacing: 0.18,
                                height: 1.40,
                              ),
                            ),
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
            alignment: Alignment.topLeft,
            child: Container(
              height: getVerticalSize(
                20.00,
              ),
              width: getHorizontalSize(
                40.00,
              ),
              margin: getMargin(
                top: 14,
                right: 10,
                bottom: 14,
              ),
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      2.00,
                    ),
                  ),
                ),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(
                          top: 1,
                          bottom: 1,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              2.00,
                            ),
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgTicket18X40,
                            height: getVerticalSize(
                              18.00,
                            ),
                            width: getHorizontalSize(
                              40.00,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(
                          left: 9,
                          right: 10,
                        ),
                        child: Text(
                          "lbl_skin".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRegular10Indigo900.copyWith(
                            letterSpacing: 0.18,
                            height: 2.00,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
