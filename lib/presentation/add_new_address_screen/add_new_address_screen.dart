import 'dart:developer';

import 'package:saturn_flutter/presentation/cart_screen/controller/cart_controller.dart';

import 'controller/add_new_address_controller.dart';
import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';
import 'package:saturn_flutter/core/utils/validation_functions.dart';
import 'package:saturn_flutter/widgets/custom_button.dart';
import 'package:saturn_flutter/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AddNewAddressScreen extends GetWidget<AddNewAddressController> {
  // GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final CartController cartController = Get.find();

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text(
                  "Add New Address",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoBold18
                      .copyWith(letterSpacing: 0.50)),
              leading:
              GestureDetector(
                  onTap: () {
                    onTapImgArrowleft();
                  },
                  child: Padding(
                    padding:  EdgeInsets.only(left: Get.width*.06),
                    child: Icon(Icons.arrow_back_ios,color: ColorConstant.indigo900,)
                  )),

            ),
            body: Form(

                child: Container(
                    margin: getMargin(left: 24, top: 0, right: 25),
                    child: SingleChildScrollView(
                        child: Container(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.start,
                                children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 11,
                                          top: 28,
                                          right: 11),
                                      child: Text(
                                          "msg_contact_informa".tr,
                                          overflow:
                                              TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoMedium12
                                              .copyWith(
                                                  letterSpacing:
                                                      0.50)))),
                              CustomTextFormField(
                                  width: 300,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.firstnameController.value,
                                  hintText: "lbl_full_name".tr,
                                  margin: getMargin(
                                      left: 11, top: 20, right: 11),
                                  validator: (value) {
                                    if (!isText(value)) {
                                      return "Please enter valid text";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  width: 300,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.phoneController.value,
                                  hintText: "lbl_phone".tr,
                                  margin: getMargin(
                                      left: 11, top: 22, right: 11),
                                  validator: (value) {
                                    if (!isValidPhone(value)) {
                                      return "Please enter valid phone number";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  width: 300,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.lastnameController.value,
                                  hintText: "lbl_email".tr,
                                  margin: getMargin(
                                      left: 11, top: 22, right: 11),
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  }),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 11,
                                          top: 32,
                                          right: 11),
                                      child: Text(
                                          "msg_delivery_addres".tr,
                                          overflow:
                                              TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoMedium12
                                              .copyWith(
                                                  letterSpacing:
                                                      0.50)))),
                              CustomTextFormField(
                                  width: 300,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.address1Controller.value,
                                  hintText: "address1",
                                  margin: getMargin(
                                      left: 11, top: 18, right: 11)),
                              CustomTextFormField(
                                  width: 300,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.address2Controller.value,
                                  hintText: "address2",
                                  margin: getMargin(
                                      left: 11, top: 24, right: 11)),
                              CustomTextFormField(
                                  width: 300,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.cityController.value,
                                  hintText: "city",
                                  margin: getMargin(
                                      left: 11, top: 23, right: 11)),
                              CustomTextFormField(
                                  width: 300,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.companyController.value,
                                  hintText: 'company',
                                  margin: getMargin(
                                      left: 11, top: 24, right: 11)),
                              CustomTextFormField(
                                  width: 300,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.countryController.value,
                                  hintText: "country",
                                  margin: getMargin(
                                      left: 11, top: 24, right: 11),
                                  validator: (value) {
                                    if (!isNumeric(value)) {
                                      return "Please enter valid number";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  width: 300,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.provinceController.value,
                                  hintText: 'province',
                                  margin: getMargin(
                                      left: 11, top: 22, right: 11)),
                              CustomTextFormField(
                                  width: 300,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.zipController.value,
                                  hintText: "zip".tr,
                                  margin: getMargin(
                                      left: 11, top: 23, right: 11),
                                  textInputAction:
                                      TextInputAction.done,
                                  validator: (value) {
                                    if (!isText(value)) {
                                      return "Please enter valid text";
                                    }
                                    return null;
                                  }),
                                  CustomButton(
                                    onTap: () async {
                                  controller.addNewAddressModelObj.value=await controller.saveAddress(Constant.accessToken);
                                  // controller.addNewAddressList.add(controller.addNewAddressModelObj.value);
                                  // log("_____________BACK:${controller.addNewAddressModelObj.value.data?.customerAddressCreate?.customerAddress?.id}");
                                  //     controller.addNewAddressModelObj.value.data?.customerAddressCreate?.customerAddress?.firstName=controller.firstnameController.value.text;
                                  //     controller.addNewAddressModelObj.value.data?.customerAddressCreate?.customerAddress?.lastName=controller.lastnameController.value.text;
                                  //     controller.addNewAddressModelObj.value.data?.customerAddressCreate?.customerAddress?.phone=controller.phoneController.value.text;
                                  //     controller.addNewAddressModelObj.value.data?.customerAddressCreate?.customerAddress?.zip=controller.zipController.value.text;
                                  //     controller.addNewAddressModelObj.value.data?.customerAddressCreate?.customerAddress?.address1=controller.address1Controller.value.text;
                                  //     controller.addNewAddressModelObj.value.data?.customerAddressCreate?.customerAddress?.address1=controller.address2Controller.value.text;
                                  //     controller.addNewAddressModelObj.value.data?.customerAddressCreate?.customerAddress?.city=controller.cityController.value.text;
                                  //     controller.addNewAddressModelObj.value.data?.customerAddressCreate?.customerAddress?.country=controller.countryController.value.text;
                                  //     controller.addNewAddressModelObj.value.data?.customerAddressCreate?.customerAddress?.province=controller.provinceController.value.text;
                                  //     controller.addNewAddressModelObj.value.data?.customerAddressCreate?.customerAddress?.company=controller.companyController.value.text;

                                  controller.firstnameController.value.clear();
                                  controller.lastnameController.value.clear();
                                  controller.phoneController.value.clear();
                                  controller.zipController.value.clear();
                                  controller.address1Controller.value.clear();
                                  controller.address2Controller.value.clear();
                                  controller.cityController.value.clear();
                                  controller.countryController.value.clear();
                                  controller.provinceController.value.clear();
                                  controller.companyController.value.clear();
                                  Get.back();
                                  // Get.back(result:controller.addNewAddressModelObj.value.data?.customerAddressCreate?.customerAddress );
                                    Get.snackbar("Success", "Address has been saved successfully");
                                    },
                                      width: 326,
                                      text:
                                      "lbl_save_address".tr,
                                      margin: getMargin(
                                          top: 25),
                                      fontStyle:
                                      ButtonFontStyle
                                          .DMSansBold15)

                                ])))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
