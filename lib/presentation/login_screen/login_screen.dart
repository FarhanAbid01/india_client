import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';
import 'package:saturn_flutter/core/utils/validation_functions.dart';
import 'package:saturn_flutter/widgets/custom_button.dart';
import 'package:saturn_flutter/widgets/custom_text_form_field.dart';
import 'package:saturn_flutter/presentation/signup_screen/signup_screen.dart';

// ignore: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var loginController = Get.put(LoginController());
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  bool isHide = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              // autovalidateMode: AutovalidateMode.onUserInteraction,
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
                          1.00,
                        ),
                        width: size.width,
                        decoration: BoxDecoration(
                          color: ColorConstant.gray600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 25,
                        right: 24,
                      ),
                      child: CommonImageView(
                        imagePath: ImageConstant.imgLogosatrun2,
                        height: getVerticalSize(
                          43.00,
                        ),
                        width: getHorizontalSize(
                          138.00,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(
                          left: 38,
                          top: 21,
                          right: 38,
                        ),
                        child: Text(
                          "msg_log_in_to_conti".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRomanMedium22.copyWith(
                            letterSpacing: 0.18,
                            height: 1.00,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(
                          left: 38,
                          top: 34,
                          right: 38,
                        ),
                        child: Text(
                          "lbl_email".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRomanRegular12Indigo900
                              .copyWith(
                                  height: 1.00, fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    CustomTextFormField(
                      width: 298,
                      focusNode: emailFocusNode,
                      controller: controller.email,
                      margin: getMargin(
                        left: 24,
                        top: 15,
                        right: 24,
                      ),
                      variant: TextFormFieldVariant.UnderLineGray601,
                      fontStyle: TextFormFieldFontStyle.RobotoRomanRegular14,
                      validator: (value) {
                        if (value == null ||
                            (!isValidEmail(value, isRequired: true))) {
                          return "Please enter valid email";
                        }
                        return null;
                      },
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(
                          left: 38,
                          top: 34,
                          right: 38,
                        ),
                        child: Text(
                          "Password",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRomanRegular12Indigo900
                              .copyWith(
                                  height: 1.00, fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    CustomTextFormField(
                      width: 298,
                      focusNode: passwordFocusNode,
                      controller: controller.password,
                      margin: getMargin(
                        left: 24,
                        top: 12,
                        right: 24,
                      ),
                      variant: TextFormFieldVariant.UnderLineGray601,
                      fontStyle: TextFormFieldFontStyle.RobotoRomanRegular14,
                      textInputAction: TextInputAction.done,
                      suffix: GestureDetector(
                        onTap: () {
                          isHide = !isHide;
                          Get.forceAppUpdate();
                        },
                        child: Container(
                            margin: getMargin(
                              left: 30,
                              top: 5,
                              right: 1,
                              bottom: 0,
                            ),
                            child: Icon(
                              isHide == false
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            )),
                      ),
                      suffixConstraints: BoxConstraints(
                        minWidth: getHorizontalSize(
                          22.00,
                        ),
                        minHeight: getVerticalSize(
                          15.00,
                        ),
                      ),
                      isObscureText: isHide,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: getPadding(
                          left: 38,
                          top: 13,
                          right: 38,
                        ),
                        child: Text(
                          "lbl_reset_password".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style:
                              AppStyle.txtRobotoRomanMedium14Gray600.copyWith(
                            height: 1.00,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: getMargin(
                        left: 24,
                        top: 273,
                        right: 24,
                        bottom: 123,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            15.00,
                          ),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomButton(
                              width: 326,
                              text: "lbl_log_in".tr,
                              alignment: Alignment.centerLeft,
                              onTap: () {
                                if (_formKey.currentState!.validate()) {
                                  controller.loginUser(
                                      controller.email, controller.password);
                                }
                              }),
                          Padding(
                            padding: getPadding(
                              left: 66,
                              top: 26,
                              right: 65,
                              bottom: 1,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "msg_dont_have_an_ac".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRomanRegular14
                                        .copyWith(
                                      height: 1.00,
                                    ),
                                  ),
                                ),
                                Padding(
                                    padding: getPadding(
                                      left: 6,
                                      top: 1,
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        Get.to(SignupScreen());
                                      },
                                      child: Text(
                                        "lbl_sign_up".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoRomanMedium14Gray600
                                            .copyWith(
                                          height: 1.00,
                                        ),
                                      ),
                                      // onTap: signUpOnTap(),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  signUpOnTap() {
    Get.toNamed(AppRoutes.signupScreen);
  }
}
