import 'dart:convert';

import 'package:saturn_flutter/presentation/product_detail_screen/models/cart_id_model.dart';

import '/core/app_export.dart';
import 'package:saturn_flutter/presentation/product_detail_screen/models/product_detail_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductDetailController extends GetxController {
  TextEditingController group18217Controller = TextEditingController();

  Rx<ProductDetailModel> productDetailModelObj = ProductDetailModel().obs;

  Rx<int> silderIndex = 0.obs;

  Future<CartId> createCart(String variantID, int qty) async {
    var list;
    var headers = {
      'X-Shopify-Storefront-Access-Token': '02d6076902e8bc84bcae420390008d1b',
      'Content-Type': 'application/json',
      'Cookie':
      '_landing_page=%2Fpassword; _orig_referrer=https%3A%2F%2Fprex-prex-prex.myshopify.com%2Fapi%2F; _shopify_y=0e39f0a5-9830-494f-90eb-1a8d03ad965a; _y=0e39f0a5-9830-494f-90eb-1a8d03ad965a; cart_currency=INR; localization=IN; secure_customer_sig='
    };
    var request = http.Request(
        'POST',
        Uri.parse(
            'https://prex-prex-prex.myshopify.com/api/2022-07/graphql.json'));
    request.body = json.encode({
      "query":
      "mutation {\r\n  cartCreate(\r\n    input: {\r\n      lines: [\r\n        {\r\n          quantity: $qty\r\n          merchandiseId: \"$variantID\"\r\n        }\r\n      ]\r\n      attributes: { key: \"cart_attribute\", value: \"This is a cart attribute\" }\r\n    }\r\n  ) {\r\n    cart {\r\n      id\r\n      }\r\n    }\r\n  }\r\n",
      "variables": {}
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      list = await response.stream.bytesToString();
      print("___$list");
      Constant.isCartCreated = true;
      var obj = CartId.fromJson(json.decode(list));
      return obj;
    } else {
      print(response.reasonPhrase);
    }
    return list;
  }

  Future addToCart(String variantID, int qty, String cartID) async {
    var list;
    var headers = {
      'X-Shopify-Storefront-Access-Token': '02d6076902e8bc84bcae420390008d1b',
      'Content-Type': 'application/json',
      'Cookie':
      '_shopify_y=0e39f0a5-9830-494f-90eb-1a8d03ad965a; _y=0e39f0a5-9830-494f-90eb-1a8d03ad965a; cart_currency=INR; localization=IN; secure_customer_sig='
    };
    var request = http.Request(
        'POST',
        Uri.parse(
            'https://prex-prex-prex.myshopify.com/api/2022-07/graphql.json'));
    request.body = json.encode({
      "query":
      "mutation cartLinesAdd(\$cartId: ID!, \$lines: [CartLineInput!]!) {\r\n  cartLinesAdd(cartId: \$cartId, lines: \$lines) {\r\n    cart {\r\n      id\r\n    }\r\n    userErrors {\r\n      field\r\n      message\r\n    }\r\n  }\r\n}\r\n",
      "variables": {
        "cartId": cartID,
        "lines": {"merchandiseId": variantID, "quantity": qty}
      }
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      list = await response.stream.bytesToString();
      print("__this is my add to cartsssss_$list");
      return list;
    } else {
      print(response.reasonPhrase);
    }
    return list;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group18217Controller.dispose();
  }
}