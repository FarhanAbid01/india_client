import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:saturn_flutter/presentation/add_new_address_screen/all_user_info.dart';
import 'package:saturn_flutter/presentation/add_new_address_screen/controller/add_new_address_controller.dart';
import 'package:saturn_flutter/presentation/add_new_address_screen/models/add_new_address_model.dart';
import 'package:saturn_flutter/presentation/add_new_address_screen/update_address.dart';

import '../controller/change_address_controller.dart';
import '../models/change_address_item_model.dart';
import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';
import 'package:saturn_flutter/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ChangeAddressItemWidget extends StatelessWidget {
  ChangeAddressItemWidget(this.changeAddressItemModelObj,this.index,);
  List<Edges> changeAddressItemModelObj;
  int index;

  var controller = Get.find<ChangeAddressController>();
  var addresscontroller = Get.find<AddNewAddressController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => GestureDetector(
      onTap: () async {
        controller.selectedAddress.value=index;
        // Get.to(UpdateAddress(changeAddressItemModelObj));
        await addresscontroller.defaultAddress(Constant.accessToken,changeAddressItemModelObj[index].node?.id??"" );
        Get.snackbar("Success", "You have successfully set this address to default",duration: Duration(seconds: 1));
      },
      child: Container(
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
          controller.selectedAddress.value==index?
          ColorConstant.pink100:
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
                color: controller.selectedAddress.value==index? Colors.white:
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
                    changeAddressItemModelObj[index].node?.firstName??"",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoBold14Indigo900.copyWith(
                      letterSpacing: 0.50,
                    ),
                  ),
                  Text(
                    changeAddressItemModelObj[index].node?.address1?.isEmpty==true?
                    changeAddressItemModelObj[index].node?.address2??"":
                    changeAddressItemModelObj[index].node?.address1??"",
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoBold14Indigo900.copyWith(
                      height: 1.50,
                    ),
                  ),
                  SizedBox(
                    height: Get.height * .01,
                  ),
                  Text(
                    changeAddressItemModelObj[index].node?.phone??"",
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
                ],
              ),
            ),
            PopupMenuButton<int>(
              tooltip: "",
              icon: Icon(
                Icons.more_vert,
                color: controller.selectedAddress.value==index? Colors.white: ColorConstant.gray600,
                size: 25,
              ), //Adding tooltip
              shape: RoundedRectangleBorder(
                //Adding Round Border
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text(
                    "Edit",
                    style: AppStyle.txtRobotoRegular14.copyWith(
                      letterSpacing: 0.50,
                    ),
                  ),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Text(
                    "Delete",
                    style: AppStyle.txtRobotoRegular14.copyWith(
                      letterSpacing: 0.50,
                    ),
                  ),
                  value: 2,
                ),

              ],
              onSelected: (value) async {
                if(value==1)
                  {
                    // Get.to(UpdateAddress(updateModel: changeAddressItemModelObj[index].node, defaultAddress: null));
                    PersistentNavBarNavigator.pushNewScreen(
                      Get.context!,
                      screen:UpdateAddress(updateModel: changeAddressItemModelObj[index].node, defaultAddress: null),
                      withNavBar: true, // OPTIONAL VALUE. True by default.
                      pageTransitionAnimation: PageTransitionAnimation.cupertino,
                    );
                  }
                if(value==2)
                  {
                    await addresscontroller.deleteAddress(Constant.accessToken,changeAddressItemModelObj[index].node?.id??"");
                    changeAddressItemModelObj.removeWhere((element) => element.node?.id==changeAddressItemModelObj[index].node?.id);

                    Get.forceAppUpdate();
                  }
                if(value==3){
                  await addresscontroller.defaultAddress(Constant.accessToken,changeAddressItemModelObj[index].node?.id??"" );
                }
              },
            ),
          ],
        ),
      ),
    ));
  }
}
