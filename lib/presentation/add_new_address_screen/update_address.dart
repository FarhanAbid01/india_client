import 'dart:developer';

import 'package:saturn_flutter/presentation/add_new_address_screen/all_user_info.dart';
import 'package:saturn_flutter/presentation/add_new_address_screen/models/add_new_address_model.dart';
import 'package:saturn_flutter/presentation/cart_screen/controller/cart_controller.dart';

import 'controller/add_new_address_controller.dart';
import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';
import 'package:saturn_flutter/core/utils/validation_functions.dart';
import 'package:saturn_flutter/widgets/custom_button.dart';
import 'package:saturn_flutter/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class UpdateAddress extends GetWidget<AddNewAddressController> {
  DefaultAddress? defaultAddress;
  AddressNode? updateModel;

  UpdateAddress({required this.defaultAddress,required this.updateModel});

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AddNewAddressController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    if(defaultAddress!=null)
      {
        controller.firstnameController.value.text=defaultAddress?.firstName??"";
        controller.lastnameController.value.text=defaultAddress?.phone??"";
        controller.phoneController.value.text=defaultAddress?.firstName??"";
        controller.zipController.value.text=defaultAddress?.firstName??"";
        controller.address1Controller.value.text=defaultAddress?.firstName??"";
        controller.cityController.value.text=defaultAddress?.firstName??"";
        controller.countryController.value.text=defaultAddress?.firstName??"";
        controller.provinceController.value.text=defaultAddress?.firstName??"";
        controller.companyController.value.text=defaultAddress?.firstName??"";
      }
    else{
      controller.firstnameController.value.text=updateModel?.firstName??"";
      controller.lastnameController.value.text=updateModel?.phone??"";
      controller.phoneController.value.text=updateModel?.firstName??"";
      controller.zipController.value.text=updateModel?.firstName??"";
      controller.address1Controller.value.text=updateModel?.firstName??"";
      controller.cityController.value.text=updateModel?.firstName??"";
      controller.countryController.value.text=updateModel?.firstName??"";
      controller.provinceController.value.text=updateModel?.firstName??"";
      controller.companyController.value.text=updateModel?.firstName??"";
    }

    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text(
                  "Update Address",
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
                // key: _formKey,
                // autovalidateMode: AutovalidateMode.onUserInteraction,
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
                                        // controller.addNewAddressModelObj.value=await
                                        controller.updateAddress(Constant.accessToken);
                                        // controller.addNewAddressList.add(controller.addNewAddressModelObj.value);
                                        // log("_____________BACK:${controller.addNewAddressModelObj.value.data?.customerAddressCreate?.customerAddress?.id}");
                                        Get.back();
                                        // Get.back(result:controller.addNewAddressModelObj.value.data?.customerAddressCreate?.customerAddress );
                                        Get.snackbar("Success", "Address has been updated successfully");
                                      },
                                      width: 326,
                                      text: "Save",
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
