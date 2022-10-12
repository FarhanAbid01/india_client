import 'dart:convert';

import 'package:saturn_flutter/presentation/homepage_screen/baseview.dart';
import 'package:saturn_flutter/presentation/login_screen/models/login_model.dart';

import '/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  // Rx<LoginModel> loginModelObj = LoginModel(data: null).obs;

  loginUser(TextEditingController email, TextEditingController password) async {
    var headers = {
      'X-Shopify-Storefront-Access-Token': 'ce8413db8d3d61247fcaee38fa6db338',
      'Content-Type': 'application/json',
      'Cookie': '_shopify_y=0e39f0a5-9830-494f-90eb-1a8d03ad965a; _y=0e39f0a5-9830-494f-90eb-1a8d03ad965a; cart_currency=INR; localization=IN; secure_customer_sig='
    };
    var request = http.Request('POST', Uri.parse('https://prex-prex-prex.myshopify.com/api/2022-01/graphql.json'));
    request.body = json.encode({
      "query": "mutation SignInWithEmailAndPassword(\n    \$email: String!, \n    \$password: String!,\n) {\n    customerAccessTokenCreate(input: { \n        email: \$email, \n        password: \$password,\n    }) {\n        customerAccessToken {\n            accessToken\n            expiresAt\n        }\n        customerUserErrors {\n            code\n            message\n            field\n        }\n    }\n}",
      "variables": {
        "email": email.text,
        "password": password.text
      }
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var list = await response.stream.bytesToString();
      print('this is respones' + list);
      var obj = LoginModel.fromJson(json.decode(list));
      if (obj.data?.customerAccessTokenCreate?.customerUserErrors?.length ==
          0) {
        Get.to(() => BaseView());


        print('this is token ${obj.data?.customerAccessTokenCreate
            ?.customerAccessToken['accessToken']}');
      } else {
        Get.snackbar('Oops', 'Please check your credentials and try again', snackPosition: SnackPosition.BOTTOM);
        print(response.reasonPhrase);
      }
    }}

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    email.clear();
    password.clear();
  }
}
