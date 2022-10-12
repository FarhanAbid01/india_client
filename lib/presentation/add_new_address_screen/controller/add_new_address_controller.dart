import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:saturn_flutter/presentation/add_new_address_screen/all_user_info.dart';
import '/core/app_export.dart';
import 'package:saturn_flutter/presentation/add_new_address_screen/models/add_new_address_model.dart';
import 'package:http/http.dart' as http;
class AddNewAddressController extends GetxController {
  Rx<TextEditingController> firstnameController = TextEditingController().obs;

  Rx<TextEditingController> lastnameController = TextEditingController().obs;

  Rx<TextEditingController> phoneController = TextEditingController().obs;

  Rx<TextEditingController> zipController = TextEditingController().obs;

  Rx<TextEditingController> address1Controller = TextEditingController().obs;

  Rx<TextEditingController> address2Controller = TextEditingController().obs;

  Rx<TextEditingController> cityController = TextEditingController().obs;

  Rx<TextEditingController> countryController = TextEditingController().obs;

  Rx<TextEditingController> provinceController = TextEditingController().obs;

  Rx<TextEditingController> companyController = TextEditingController().obs;

  Rx<AddNewAddressModel> addNewAddressModelObj = AddNewAddressModel().obs;
  // RxList<AddNewAddressModel> addNewAddressList = RxList<AddNewAddressModel>();

   saveAddress(String accessToken) async {
    var list;
    var headers = {
      'X-Shopify-Storefront-Access-Token': '02d6076902e8bc84bcae420390008d1b',
      'Content-Type': 'application/json',
      'Cookie': '_shopify_y=0e39f0a5-9830-494f-90eb-1a8d03ad965a; _y=0e39f0a5-9830-494f-90eb-1a8d03ad965a; cart_currency=INR; localization=IN; secure_customer_sig='
    };
    var request = http.Request('POST', Uri.parse('https://prex-prex-prex.myshopify.com/api/2022-07/graphql.json'));
    request.body = json.encode({
      "query": "mutation customerAddressCreate(\$address: MailingAddressInput!, \$customerAccessToken: String!) {\r\n  customerAddressCreate(address: \$address, customerAccessToken: \$customerAccessToken) {\r\n    customerAddress {\r\n      id\r\n      address1\r\n      address2\r\n      city\r\n      company\r\n      country\r\n      firstName\r\n      lastName\r\n      phone\r\n      province\r\n      zip\r\n    }\r\n    customerUserErrors {\r\n      code\r\n      field\r\n      message\r\n    }\r\n  }\r\n}\r\n",
      "variables": {
        "address": {
          "address1": address1Controller.value.text,
          "address2": address2Controller.value.text,
          "city": cityController.value.text,
          "company":companyController.value.text,
          "country": countryController.value.text,
          "firstName": firstnameController.value.text,
          "lastName": lastnameController.value.text,
          "phone": phoneController.value.text,
          "province": provinceController.value.text,
          "zip": zipController.value.text
        },
        "customerAccessToken": "a6c650ba2d9aef31b3c83b787faa8170"
      }
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      list = await response.stream.bytesToString();
       print("_______$list");
      var obj = AddNewAddressModel.fromJson(json.decode(list));
      print("____________in saveddd:${obj.data?.customerAddressCreate?.customerAddress?.id}");
      return obj;
    }
    else {
      print(response.reasonPhrase);
    }
    return list;

  }
   userInfoAddresses(String accessToken) async {
    var list;
    var headers = {
      'X-Shopify-Storefront-Access-Token': '02d6076902e8bc84bcae420390008d1b',
      'Content-Type': 'application/json',
      'Cookie': '_shopify_y=0e39f0a5-9830-494f-90eb-1a8d03ad965a; _y=0e39f0a5-9830-494f-90eb-1a8d03ad965a; cart_currency=INR; localization=IN; secure_customer_sig='
    };
    var request = http.Request('POST', Uri.parse('https://prex-prex-prex.myshopify.com/api/2022-07/graphql.json'));
    request.body = json.encode({
      "query": "query FetchCustomerInfo(\$customerAccessToken: String!) {\n  customer(customerAccessToken: \$customerAccessToken) {\n    id\n    firstName\n    lastName\n    email\n    defaultAddress {\n        id\n        address1\n        address2\n        city\n        company\n        country\n        firstName\n        lastName\n        phone\n        province\n        zip\n    }\n    addresses(first: 100) {\n        edges {\n            node {\n                id\n                address1\n                address2\n                city\n                company\n                country\n                firstName\n                lastName\n                phone\n                province\n                zip\n            }\n        }\n    }\n  }\n}",
      "variables": {
        "customerAccessToken": "a6c650ba2d9aef31b3c83b787faa8170"
      }
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      list = await response.stream.bytesToString();
      // print("_______${list['data']['customerAddressCreate']['customerAddress']['id'].toString()}");
      var obj = AllUserInfo.fromJson(json.decode(list));
      // log("____________in save:${obj.data?.customerAddressCreate?.customerAddress?.id}");
      return obj;
    }
    else {
      print(response.reasonPhrase);
    }
    return list;

  }

  Future updateAddress(String accessToken) async {
    var list;
    var headers = {
      'X-Shopify-Storefront-Access-Token': '02d6076902e8bc84bcae420390008d1b',
      'Content-Type': 'application/json',
      'Cookie': '_shopify_y=0e39f0a5-9830-494f-90eb-1a8d03ad965a; _y=0e39f0a5-9830-494f-90eb-1a8d03ad965a; cart_currency=INR; localization=IN; secure_customer_sig='
    };
    var request = http.Request('POST', Uri.parse('https://prex-prex-prex.myshopify.com/api/2022-07/graphql.json'));
    request.body = json.encode({
      "query": "mutation customerAddressUpdate(\$address: MailingAddressInput!, \$customerAccessToken: String!, \$id: ID!) {\r\n  customerAddressUpdate(address: \$address, customerAccessToken: \$customerAccessToken, id: \$id) {\r\n    customerAddress {\r\n      address1\r\n      address2\r\n      city\r\n      company\r\n      country\r\n      firstName\r\n      lastName\r\n      phone\r\n      province\r\n      zip\r\n    }\r\n    customerUserErrors {\r\n        code\r\n        field\r\n        message\r\n    }\r\n  }\r\n}\r\n",
      "variables": {
        "address": {
          "address1": address1Controller.value.text,
          "address2": address2Controller.value.text,
          "city": cityController.value.text,
          "company":companyController.value.text,
          "country": countryController.value.text,
          "firstName": firstnameController.value.text,
          "lastName": lastnameController.value.text,
          "phone": phoneController.value.text,
          "province": provinceController.value.text,
          "zip": zipController.value.text
        },
        "customerAccessToken": "a6c650ba2d9aef31b3c83b787faa8170",
        "id": addNewAddressModelObj.value.data?.customerAddressCreate?.customerAddress?.id
      }
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      list = await response.stream.bytesToString();
      print("_______$list");
      // var obj = AddNewAddressModel.fromJson(json.decode(list));
      // log("____________in save:${obj.data?.customerAddressCreate?.customerAddress?.id}");
      // return obj;
    }
    else {
      print(response.reasonPhrase);
    }
    // return list;

  }
  Future deleteAddress(String accessToken,String id) async {
    var list;
    var headers = {
      'X-Shopify-Storefront-Access-Token': '02d6076902e8bc84bcae420390008d1b',
      'Content-Type': 'application/json',
      'Cookie': '_shopify_y=0e39f0a5-9830-494f-90eb-1a8d03ad965a; _y=0e39f0a5-9830-494f-90eb-1a8d03ad965a; cart_currency=INR; localization=IN; secure_customer_sig='
    };
    var request = http.Request('POST', Uri.parse('https://prex-prex-prex.myshopify.com/api/2022-07/graphql.json'));
    request.body = json.encode({
      "query": "mutation customerAddressDelete(\$customerAccessToken: String!, \$id: ID!) {\r\n  customerAddressDelete(customerAccessToken: \$customerAccessToken, id: \$id) {\r\n    customerUserErrors {\r\n      code\r\n      field\r\n      message\r\n    }\r\n    deletedCustomerAddressId\r\n  }\r\n}\r\n",
      "variables": {
        "customerAccessToken": "a6c650ba2d9aef31b3c83b787faa8170",
        "id":id
      }
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      list = await response.stream.bytesToString();
      print("_______$list");
      // addNewAddressModelObj.value=null;
      // var obj = AddNewAddressModel.fromJson(json.decode(list));
      // log("____________in save:${obj.data?.customerAddressCreate?.customerAddress?.id}");
      // return obj;
    }
    else {
      print(response.reasonPhrase);
    }
    // return list;

  }

  Future defaultAddress(String accessToken,String id) async {
    var list;
    var headers = {
      'X-Shopify-Storefront-Access-Token': '02d6076902e8bc84bcae420390008d1b',
      'Content-Type': 'application/json',
      'Cookie': '_shopify_y=0e39f0a5-9830-494f-90eb-1a8d03ad965a; _y=0e39f0a5-9830-494f-90eb-1a8d03ad965a; cart_currency=INR; localization=IN; secure_customer_sig='
    };
    var request = http.Request('POST', Uri.parse('https://prex-prex-prex.myshopify.com/api/2022-07/graphql.json'));
    request.body = json.encode({
      "query": "mutation customerDefaultAddressUpdate(\$addressId: ID!, \$customerAccessToken: String!) {\r\n  customerDefaultAddressUpdate(addressId: \$addressId, customerAccessToken: \$customerAccessToken) {\r\n    customer {\r\n      id\r\n      defaultAddress {\r\n          id\r\n          address1\r\n          address2\r\n          city\r\n          company\r\n          country\r\n          firstName\r\n          lastName\r\n          phone\r\n          province\r\n          zip\r\n      }\r\n      addresses {\r\n          edges {\r\n              node {\r\n                  id\r\n                address1\r\n                address2\r\n                city\r\n                company\r\n                country\r\n                firstName\r\n                lastName\r\n                phone\r\n                province\r\n                zip\r\n              }\r\n          }\r\n      }\r\n    }\r\n    customerUserErrors {\r\n        code\r\n        field\r\n        message\r\n    }\r\n  }\r\n}\r\n",
      "variables": {
        "addressId": id,
        "customerAccessToken": "a6c650ba2d9aef31b3c83b787faa8170"
      }
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      list = await response.stream.bytesToString();
      print("_______$list");
      // addNewAddressModelObj.value=null;
      // var obj = AddNewAddressModel.fromJson(json.decode(list));
      // log("____________in save:${obj.data?.customerAddressCreate?.customerAddress?.id}");
      // return obj;
    }
    else {
      print(response.reasonPhrase);
    }
    // return list;

  }
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    firstnameController.value.clear();
    lastnameController.value.clear();
    phoneController.value.clear();
    zipController.value.clear();
    address1Controller.value.clear();
    address2Controller.value.clear();
    cityController.value.clear();
    countryController.value.clear();
    provinceController.value.clear();
    companyController.value.clear();


    @override
    void onReady() {
      super.onReady();
    }

    @override
    void onClose() {
      super.onClose();
    }
  }
}
