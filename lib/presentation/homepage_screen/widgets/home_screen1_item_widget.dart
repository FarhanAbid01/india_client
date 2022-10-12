import 'package:intl/intl.dart';
import 'package:saturn_flutter/presentation/homepage_screen/models/blog_model.dart';

import '../controller/homepage_controller.dart';
import '../models/home_screen1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';

// ignore: must_be_immutable
class HomeScreen1ItemWidget extends StatelessWidget {
  HomeScreen1ItemWidget(this.homeScreen1ItemModelObj);

  BlogNode homeScreen1ItemModelObj;

  var controller = Get.find<HomepageController>();

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
        top: 8.0,
        bottom: 8.0,
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
              decoration: AppDecoration.outlineBlack9001e.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ClipRRect(
                    borderRadius:BorderRadius.only(topLeft: Radius.circular(16),bottomLeft: Radius.circular(16)),
                    child: CommonImageView(
                      imagePath:"",
                      url: homeScreen1ItemModelObj.image?.url??"",
                      height: getVerticalSize(
                        88.00,
                      ),
                      width: getHorizontalSize(
                        91.00,
                      ),
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 15,
                      right: 34,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: getHorizontalSize(
                              184.00,
                            ),
                            margin: getMargin(
                              right: 3,
                            ),
                            child: Text(
                              homeScreen1ItemModelObj.title??"",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoMedium12Gray600.copyWith(
                                letterSpacing: 0.18,
                                height: 1.67,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 7,
                          ),
                          child: Text(
                            "By Saturn by GHC on ${DateFormat("MMM dd yyyy").format(DateFormat("yyyy-dd-MM").parse(homeScreen1ItemModelObj.publishedAt??""))}",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRegular12Gray500.copyWith(
                              letterSpacing: 0.18,
                              height: 1.00,
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
                18.00,
              ),
              width: getHorizontalSize(
                40.00,
              ),
              margin: getMargin(
                top: 15,
                right: 10,
                bottom: 15,
              ),
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                color: Color(0xffD4F1F4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      2.00,
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                     "lbl_skin".tr,
                     overflow: TextOverflow.ellipsis,
                     textAlign: TextAlign.left,
                     style: AppStyle.txtRobotoRegular10Indigo900.copyWith(
                       letterSpacing: 0.18,
                       height: 1.00,
                     ),
                    ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
