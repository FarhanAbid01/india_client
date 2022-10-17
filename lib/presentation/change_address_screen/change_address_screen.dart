import 'dart:developer';

import 'package:saturn_flutter/presentation/add_new_address_screen/all_user_info.dart';
import 'package:saturn_flutter/presentation/add_new_address_screen/controller/add_new_address_controller.dart';
import 'package:saturn_flutter/presentation/add_new_address_screen/models/add_new_address_model.dart';
import 'package:saturn_flutter/presentation/change_address_screen/controller/change_address_controller.dart';
import 'package:saturn_flutter/presentation/change_address_screen/models/change_address_item_model.dart';

import '../change_address_screen/widgets/change_address_item_widget.dart';

import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';
import 'package:saturn_flutter/widgets/custom_button.dart';

class ChangeAddressScreen extends GetWidget<ChangeAddressController> {
  Addresses addresses;

  ChangeAddressScreen(this.addresses);

  final ChangeAddressController controller = Get.find();
  final AddNewAddressController addresscontroller = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text("Change Address",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style:
                      AppStyle.txtRobotoBold18.copyWith(letterSpacing: 0.50)),
              leading: GestureDetector(
                  onTap: () {
                    onTapImgArrowleft();
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: Get.width * .06),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: ColorConstant.indigo900,
                      size: 18,
                    ),
                  )),
            ),
            body: Container(
                margin: getMargin(left: 24, top: 0, right: 25),
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Row(
                        children: [
                          Text("Select or Add New address",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoBold18.copyWith(
                                  letterSpacing: 0.50,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal)),
                        ],
                      ),
                      Padding(
                          padding: getPadding(left: 10, top: 10, right: 10),
                          child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: addresses.edges?.length,
                              itemBuilder: (context, index) {
                                return ChangeAddressItemWidget(
                                    addresses.edges ?? [], index);
                              })),
                      CustomButton(
                          width: 326,
                          text: "lbl_add_new_address2".tr,
                          margin: getMargin(top: 173),
                          fontStyle: ButtonFontStyle.DMSansBold15,
                          alignment: Alignment.centerLeft),
                    ])))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
