import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:saturn_flutter/presentation/add_new_address_screen/all_user_info.dart';
import 'package:saturn_flutter/presentation/add_new_address_screen/controller/add_new_address_controller.dart';
import 'package:saturn_flutter/presentation/add_new_address_screen/models/add_new_address_model.dart';
import 'package:saturn_flutter/presentation/add_new_address_screen/update_address.dart';

import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';
import 'package:saturn_flutter/presentation/change_address_screen/change_address_screen.dart';
import 'package:saturn_flutter/presentation/change_address_screen/controller/change_address_controller.dart';
import 'package:saturn_flutter/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class DefaultAddressWidget extends StatelessWidget {
  DefaultAddressWidget(this.userInfo,this.defaultAddress,);
  DefaultAddress? defaultAddress;
  AllUserInfo? userInfo;

  var controller = Get.find<ChangeAddressController>();
  var addresscontroller = Get.find<AddNewAddressController>();

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: getMargin(
        top: 10.0,
        bottom: 10.0,
      ),
      padding: getMargin(
        top: 10.0,
        bottom: 10.0,
      ),
      decoration: BoxDecoration(
        color:

        Colors.white,
        borderRadius: BorderRadiusStyle.roundedBorder10,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90023,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: BoxDecoration(
              color:
              ColorConstant.pink100.withOpacity(.50),
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(9),
            child: Icon(Icons.location_on_rounded,
                color: ColorConstant.gray600, size: 20),
          ),
          Container(
            margin: getMargin(
              left: 10,
              top: 3,
              bottom: 4,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  defaultAddress?.firstName??"",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoBold14Indigo900.copyWith(
                    letterSpacing: 0.50,
                  ),
                ),
                Text(
                  defaultAddress?.address1?.isEmpty==true?
                  defaultAddress?.address2??"":
                  defaultAddress?.address1??"",
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoMedium12Gray500.copyWith(
                    height: 1.50,
                  ),
                ),
                SizedBox(
                  height: Get.height * .01,
                ),
                Text(
                  defaultAddress?.phone??"",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRegular14.copyWith(
                    letterSpacing: 0.50,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 7,
                  ),
                  child: Text(
                    "msg_goundanupama_gm".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular14.copyWith(
                      letterSpacing: 0.50,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 1,
                    right: 10,
                  ),
                  child: Text(
                    "lbl_2_deal".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular10WhiteA700.copyWith(
                    ),
                  ),
                ),
                Padding(
                    padding: getPadding(
                        left: 0, top: 9, right: 99),
                    child: GestureDetector(
                      onTap: (){
                        // Get.to(ChangeAddressScreen(userInfo?.data?.customer?.addresses??Addresses()))?.then((value) {
                        //   Get.forceAppUpdate();
                        // });
                        PersistentNavBarNavigator.pushNewScreen(
                          context,
                          screen:  ChangeAddressScreen(userInfo?.data?.customer?.addresses??Addresses()),
                          withNavBar: true, // OPTIONAL VALUE. True by default.
                          pageTransitionAnimation: PageTransitionAnimation.cupertino,
                        ).then((value) => Get.forceAppUpdate());
                      },
                      child: Text(
                          "Change Address",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoBold14
                              .copyWith(
                              letterSpacing: 0.18,
                              height: 1.00,
                              decoration:
                              TextDecoration
                                  .underline)),
                    )),
              ],
            ),
          ),
          SizedBox(),
          SizedBox()
        ],
      ),
    );
  }
}
