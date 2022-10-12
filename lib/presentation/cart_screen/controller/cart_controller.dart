import 'dart:convert';
import 'dart:developer';

import 'package:saturn_flutter/presentation/cart_screen/models/cart_detail_model.dart';
import 'package:saturn_flutter/presentation/homepage_screen/models/homepage_model.dart';
import 'package:saturn_flutter/presentation/homepage_screen/models/product_model.dart';
import 'package:saturn_flutter/presentation/product_detail_screen/models/cart_id_model.dart';

import '/core/app_export.dart';
import 'package:saturn_flutter/presentation/cart_screen/models/cart_model.dart';
import 'package:http/http.dart' as http;

class CartController extends GetxController {
  Rx<CartModel> cartModelObj = CartModel().obs;
  Rx<double> subTotal = 0.0.obs;
  RxList<ProductModel> addToCartProducts = RxList<ProductModel>();
  Rx<String> cartIDList = ''.obs;

  //   Future<CartDetailModel> createCart(String cartIDs) async {
  //   var list;
  //   var headers = {
  //     'X-Shopify-Storefront-Access-Token': '02d6076902e8bc84bcae420390008d1b',
  //     'Content-Type': 'application/json',
  //     'Cookie': '_landing_page=%2Fpassword; _orig_referrer=https%3A%2F%2Fprex-prex-prex.myshopify.com%2Fapi%2F; _shopify_y=0e39f0a5-9830-494f-90eb-1a8d03ad965a; _y=0e39f0a5-9830-494f-90eb-1a8d03ad965a; cart_currency=INR; localization=IN; secure_customer_sig='
  //   };
  //   var request = http.Request('POST', Uri.parse('https://prex-prex-prex.myshopify.com/api/2022-07/graphql.json'));
  //   request.body = json.encode({
  //     "query": "query {\r\n  cart(\r\n    id: \"$cartIDs\"\r\n  ) {\r\n    id\r\n    createdAt\r\n    updatedAt\r\n    lines(first: 10) {\r\n      edges {\r\n        node {\r\n          id\r\n          quantity\r\n          merchandise {\r\n            ... on ProductVariant {\r\n              id\r\n            }\r\n          }\r\n          attributes {\r\n            key\r\n            value\r\n          }\r\n        }\r\n      }\r\n    }\r\n    attributes {\r\n      key\r\n      value\r\n    }\r\n    cost {\r\n      totalAmount {\r\n        amount\r\n        currencyCode\r\n      }\r\n      subtotalAmount {\r\n        amount\r\n        currencyCode\r\n      }\r\n      totalTaxAmount {\r\n        amount\r\n        currencyCode\r\n      }\r\n      totalDutyAmount {\r\n        amount\r\n        currencyCode\r\n      }\r\n    }\r\n    buyerIdentity {\r\n      email\r\n      phone\r\n      customer {\r\n        id\r\n      }\r\n      countryCode\r\n    }\r\n  }\r\n}\r\n",
  //     "variables": {}
  //   });
  //   request.headers.addAll(headers);

  //   http.StreamedResponse response = await request.send();

  //   if (response.statusCode == 200) {
  //     list = await response.stream.bytesToString();
  //     Constant.isCardCreate=true;
  //     var obj = CartDetailModel.fromJson(json.decode(list));
  //     return obj;
  //   } else {
  //     print(response.reasonPhrase);
  //   }
  //   return list;
  // }

  // Future addToCart(String cartIDs) async {
  //   var list;
  //   var headers = {
  //     'X-Shopify-Storefront-Access-Token': '02d6076902e8bc84bcae420390008d1b',
  //     'Content-Type': 'application/json',
  //     'Cookie': '_shopify_y=0e39f0a5-9830-494f-90eb-1a8d03ad965a; _y=0e39f0a5-9830-494f-90eb-1a8d03ad965a; cart_currency=INR; localization=IN; secure_customer_sig='
  //   };
  //   var request = http.Request('POST', Uri.parse('https://prex-prex-prex.myshopify.com/api/2022-07/graphql.json'));
  //   request.body = json.encode({
  //     "query": "mutation cartLinesAdd(\$cartId: ID!, \$lines: [CartLineInput!]!) {\r\n  cartLinesAdd(cartId: \$cartId, lines: \$lines) {\r\n    cart {\r\n      id\r\n    }\r\n    userErrors {\r\n      field\r\n      message\r\n    }\r\n  }\r\n}\r\n",
  //     "variables": {
  //       "cartId": "gid://shopify/Cart/344f2122ce1fb8c55d88098b11cfdbc5",
  //       "lines": {
  //         "merchandiseId": "gid://shopify/ProductVariant/41962082664660",
  //         "quantity": 1
  //       }
  //     }
  //   });
  //   request.headers.addAll(headers);

  //   http.StreamedResponse response = await request.send();

  //   if (response.statusCode == 200) {
  //     list = await response.stream.bytesToString();
  //     Constant.isCardCreate=true;
  //     var obj = CartDetailModel.fromJson(json.decode(list));
  //     return obj;
  //   } else {
  //     print(response.reasonPhrase);
  //   }
  //   return list;
  // }

  Future<CartDetailModel> getCartDetails(String cartIDs) async {
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
      "query {\r\n  cart(\r\n    id: \"$cartIDs\"\r\n  ) {\r\n    id\r\n    createdAt\r\n    updatedAt\r\n    lines(first: 10) {\r\n      edges {\r\n        node {\r\n          id\r\n          quantity\r\n          merchandise {\r\n            ... on ProductVariant {\r\n              id\r\n            }\r\n          }\r\n          attributes {\r\n            key\r\n            value\r\n          }\r\n        }\r\n      }\r\n    }\r\n    attributes {\r\n      key\r\n      value\r\n    }\r\n    cost {\r\n      totalAmount {\r\n        amount\r\n        currencyCode\r\n      }\r\n      subtotalAmount {\r\n        amount\r\n        currencyCode\r\n      }\r\n      totalTaxAmount {\r\n        amount\r\n        currencyCode\r\n      }\r\n      totalDutyAmount {\r\n        amount\r\n        currencyCode\r\n      }\r\n    }\r\n    buyerIdentity {\r\n      email\r\n      phone\r\n      customer {\r\n        id\r\n      }\r\n      countryCode\r\n    }\r\n  }\r\n}\r\n",
      "variables": {}
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      list = await response.stream.bytesToString();
      print("___$list");
      var obj = CartDetailModel.fromJson(json.decode(list));
      print('this i mu lengthhhh ${obj.data?.cart?.lines?.edges?.length}');
      return obj;
    } else {
      print(response.reasonPhrase);
    }
    return list;
  }

  Future removeToCart(String variantID, int qty, String cartID) async {
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
      "mutation cartLinesRemove(\$cartId: ID!, \$lines: [CartLineInput!]!) {\r\n  cartLinesAdd(cartId: \$cartId, lines: \$lines) {\r\n    cart {\r\n      id\r\n    }\r\n    userErrors {\r\n      field\r\n      message\r\n    }\r\n  }\r\n}\r\n",
      "variables": {
        "cartId": cartID,
        "lines": {"merchandiseId": variantID, "quantity": qty}
      }
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      list = await response.stream.bytesToString();
      log("__this is my remove to cartsssss_$list");
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
  }
}