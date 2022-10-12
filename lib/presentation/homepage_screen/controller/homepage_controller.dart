import 'dart:convert';
import 'dart:developer';

import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:saturn_flutter/presentation/homepage_screen/models/blog_model.dart';

import '/core/app_export.dart';
import 'package:saturn_flutter/presentation/homepage_screen/models/homepage_model.dart';
import 'package:http/http.dart' as http;

class HomepageController extends GetxController {
  PersistentTabController? persistantController =
      PersistentTabController(initialIndex: 0);
  Rx<HomepageModel> homepageModelObj = HomepageModel().obs;
  Rx<bool> isShopByCatOpen = false.obs;
  Rx<int> selectedBottomNavIndex = 0.obs;
  RxList<String> whishlist = RxList<String>();

  Future productList() async {
    log('at start of api');
    var list;
    var headers = {
      'X-Shopify-Storefront-Access-Token': '02d6076902e8bc84bcae420390008d1b',
      'Content-Type': 'application/json',
      'Cookie':
          '_shopify_y=0e39f0a5-9830-494f-90eb-1a8d03ad965a; _y=0e39f0a5-9830-494f-90eb-1a8d03ad965a; localization=IN; secure_customer_sig='
    };
    var request = http.Request(
        'POST',
        Uri.parse(
            'https://prex-prex-prex.myshopify.com/api/2022-07/graphql.json'));
    request.body = json.encode({
      "query":
          "query MyQuery {\r\n  collections(first: 10) {\r\n    nodes {\r\n      title\r\n      products(first: 250) {\r\n        edges {\r\n          node {\r\n            id\r\n            title\r\n            description\r\n            images (first: 3){\r\n                edges {\r\n                    node {\r\n                        src\r\n                    }\r\n                }\r\n            }\r\n            variants(first: 250) {\r\n              edges {\r\n                node {\r\n                    id\r\n                  price\r\n                  compareAtPrice\r\n                  image {\r\n                      url\r\n                  }\r\n                }\r\n              }\r\n            }\r\n          }\r\n        }\r\n      }\r\n    }\r\n  }\r\n}\r\n",
      "variables": {}
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      list = await response.stream.bytesToString();
      print("_______${list}");
      var obj = HomepageModel.fromJson(json.decode(list));
      log('this istitlesss ${obj.data?.collections?.nodes?[3].products?.edges?[0].node?.title}');
      return obj;
    } else {
      print(response.reasonPhrase);
    }
    return list;
  }

  Future fetchBlogs() async {
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
          "{\r\n    articles(first: 3) {\r\n        edges {\r\n            node {\r\n                id\r\n                title\r\n                image {\r\n                    url\r\n                }\r\n                publishedAt\r\n                onlineStoreUrl\r\n            }\r\n        }\r\n    }\r\n}",
      "variables": {}
    });
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      list = await response.stream.bytesToString();
      print("_______${list}");
      var obj = BlogModel.fromJson(json.decode(list));
      return obj;
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
