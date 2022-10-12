import 'dart:convert';
import 'package:saturn_flutter/presentation/homepage_screen/home_screen.dart';
import 'package:saturn_flutter/presentation/login_screen/login_screen.dart';

import '/core/app_export.dart';
import 'package:saturn_flutter/presentation/signup_screen/models/signup_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SignupController extends GetxController {
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Rx<SignUpModel> signupModelObj = SignUpModel(data: null).obs;
  var list;


 Future registerUser(
      TextEditingController email,TextEditingController password, TextEditingController firstName, TextEditingController lastName) async {
    var acceptsMarketing = false;
    var headers = {
      'X-Shopify-Storefront-Access-Token': 'ce8413db8d3d61247fcaee38fa6db338',
      'Content-Type': 'application/json',
      'Cookie':
          '_landing_page=%2Fpassword; _orig_referrer=https%3A%2F%2Fprex-prex-prex.myshopify.com%2Fapi%2F; _s=25215687-be05-4eb3-b49f-2a780a7774ea; _shopify_s=25215687-be05-4eb3-b49f-2a780a7774ea; _shopify_y=0e39f0a5-9830-494f-90eb-1a8d03ad965a; _y=0e39f0a5-9830-494f-90eb-1a8d03ad965a; cart_currency=INR; identity-state=BAhbB0kiJWQ3NDAwZGU5MjBhNmIzOGRiZDg2N2JkYWRmYjUzYmJjBjoGRUZJIiU4ODNkMjdmMmYwNzNhMzMwYzE3ZGQ3ZDVkZjkyNjk0YwY7AEY%3D--f761c286fa3ad16fde8eca8247d326759f3a95e7; identity-state-3fcbff43574c3166b8028ba63f50a785=BAh7DEkiDnJldHVybi10bwY6BkVUSSI6aHR0cHM6Ly9wcmV4LXByZXgtcHJleC5teXNob3BpZnkuY29tL2FkbWluL2F1dGgvbG9naW4GOwBUSSIRcmVkaXJlY3QtdXJpBjsAVEkiRmh0dHBzOi8vcHJleC1wcmV4LXByZXgubXlzaG9waWZ5LmNvbS9hZG1pbi9hdXRoL2lkZW50aXR5L2NhbGxiYWNrBjsAVEkiEHNlc3Npb24ta2V5BjsAVDoMYWNjb3VudEkiD2NyZWF0ZWQtYXQGOwBUZhYxNjYzMzE2NDE2LjIzOTMyNUkiCm5vbmNlBjsAVEkiJTJlMzA2ODZjODM0NmMyYmEyMDgxZDE4ZGNlNTM4YmVkBjsARkkiCnNjb3BlBjsAVFsPSSIKZW1haWwGOwBUSSI3aHR0cHM6Ly9hcGkuc2hvcGlmeS5jb20vYXV0aC9kZXN0aW5hdGlvbnMucmVhZG9ubHkGOwBUSSILb3BlbmlkBjsAVEkiDHByb2ZpbGUGOwBUSSJOaHR0cHM6Ly9hcGkuc2hvcGlmeS5jb20vYXV0aC9wYXJ0bmVycy5jb2xsYWJvcmF0b3ItcmVsYXRpb25zaGlwcy5yZWFkb25seQY7AFRJIjBodHRwczovL2FwaS5zaG9waWZ5LmNvbS9hdXRoL2JhbmtpbmcubWFuYWdlBjsAVEkiQmh0dHBzOi8vYXBpLnNob3BpZnkuY29tL2F1dGgvbWVyY2hhbnQtc2V0dXAtZGFzaGJvYXJkLmdyYXBocWwGOwBUSSI8aHR0cHM6Ly9hcGkuc2hvcGlmeS5jb20vYXV0aC9zaG9waWZ5LWNoYXQuYWRtaW4uZ3JhcGhxbAY7AFRJIjdodHRwczovL2FwaS5zaG9waWZ5LmNvbS9hdXRoL2Zsb3cud29ya2Zsb3dzLm1hbmFnZQY7AFRJIj5odHRwczovL2FwaS5zaG9waWZ5LmNvbS9hdXRoL29yZ2FuaXphdGlvbi1pZGVudGl0eS5tYW5hZ2UGOwBUSSIPY29uZmlnLWtleQY7AFRJIgxkZWZhdWx0BjsAVA%3D%3D--72e548e0333897d92f64fa8daf598af1470ad270; identity-state-883d27f2f073a330c17dd7d5df92694c=BAh7DEkiDnJldHVybi10bwY6BkVUSSI6aHR0cHM6Ly9wcmV4LXByZXgtcHJleC5teXNob3BpZnkuY29tL2FkbWluL2F1dGgvbG9naW4GOwBUSSIRcmVkaXJlY3QtdXJpBjsAVEkiRmh0dHBzOi8vcHJleC1wcmV4LXByZXgubXlzaG9waWZ5LmNvbS9hZG1pbi9hdXRoL2lkZW50aXR5L2NhbGxiYWNrBjsAVEkiEHNlc3Npb24ta2V5BjsAVDoMYWNjb3VudEkiD2NyZWF0ZWQtYXQGOwBUZhcxNjYzMzE2NDE2LjUzOTIzMzRJIgpub25jZQY7AFRJIiU5ZmEwMDNlZDdjODVmNjVmN2NiZmRmOTBhMGIxM2Y3OQY7AEZJIgpzY29wZQY7AFRbD0kiCmVtYWlsBjsAVEkiN2h0dHBzOi8vYXBpLnNob3BpZnkuY29tL2F1dGgvZGVzdGluYXRpb25zLnJlYWRvbmx5BjsAVEkiC29wZW5pZAY7AFRJIgxwcm9maWxlBjsAVEkiTmh0dHBzOi8vYXBpLnNob3BpZnkuY29tL2F1dGgvcGFydG5lcnMuY29sbGFib3JhdG9yLXJlbGF0aW9uc2hpcHMucmVhZG9ubHkGOwBUSSIwaHR0cHM6Ly9hcGkuc2hvcGlmeS5jb20vYXV0aC9iYW5raW5nLm1hbmFnZQY7AFRJIkJodHRwczovL2FwaS5zaG9waWZ5LmNvbS9hdXRoL21lcmNoYW50LXNldHVwLWRhc2hib2FyZC5ncmFwaHFsBjsAVEkiPGh0dHBzOi8vYXBpLnNob3BpZnkuY29tL2F1dGgvc2hvcGlmeS1jaGF0LmFkbWluLmdyYXBocWwGOwBUSSI3aHR0cHM6Ly9hcGkuc2hvcGlmeS5jb20vYXV0aC9mbG93LndvcmtmbG93cy5tYW5hZ2UGOwBUSSI%2BaHR0cHM6Ly9hcGkuc2hvcGlmeS5jb20vYXV0aC9vcmdhbml6YXRpb24taWRlbnRpdHkubWFuYWdlBjsAVEkiD2NvbmZpZy1rZXkGOwBUSSIMZGVmYXVsdAY7AFQ%3D--bad655e92b96cec16da6ba87f4471d1c22fa3d1a; identity-state-d7400de920a6b38dbd867bdadfb53bbc=BAh7DEkiDnJldHVybi10bwY6BkVUSSI6aHR0cHM6Ly9wcmV4LXByZXgtcHJleC5teXNob3BpZnkuY29tL2FkbWluL2F1dGgvbG9naW4GOwBUSSIRcmVkaXJlY3QtdXJpBjsAVEkiRmh0dHBzOi8vcHJleC1wcmV4LXByZXgubXlzaG9waWZ5LmNvbS9hZG1pbi9hdXRoL2lkZW50aXR5L2NhbGxiYWNrBjsAVEkiEHNlc3Npb24ta2V5BjsAVDoMYWNjb3VudEkiD2NyZWF0ZWQtYXQGOwBUZhYxNjYzMzE1ODY0LjE4OTcxM0kiCm5vbmNlBjsAVEkiJWJmNDU2MDIxN2FiODQ2Zjc0MmY4NjFiZWM5NTlkNzM5BjsARkkiCnNjb3BlBjsAVFsPSSIKZW1haWwGOwBUSSI3aHR0cHM6Ly9hcGkuc2hvcGlmeS5jb20vYXV0aC9kZXN0aW5hdGlvbnMucmVhZG9ubHkGOwBUSSILb3BlbmlkBjsAVEkiDHByb2ZpbGUGOwBUSSJOaHR0cHM6Ly9hcGkuc2hvcGlmeS5jb20vYXV0aC9wYXJ0bmVycy5jb2xsYWJvcmF0b3ItcmVsYXRpb25zaGlwcy5yZWFkb25seQY7AFRJIjBodHRwczovL2FwaS5zaG9waWZ5LmNvbS9hdXRoL2JhbmtpbmcubWFuYWdlBjsAVEkiQmh0dHBzOi8vYXBpLnNob3BpZnkuY29tL2F1dGgvbWVyY2hhbnQtc2V0dXAtZGFzaGJvYXJkLmdyYXBocWwGOwBUSSI8aHR0cHM6Ly9hcGkuc2hvcGlmeS5jb20vYXV0aC9zaG9waWZ5LWNoYXQuYWRtaW4uZ3JhcGhxbAY7AFRJIjdodHRwczovL2FwaS5zaG9waWZ5LmNvbS9hdXRoL2Zsb3cud29ya2Zsb3dzLm1hbmFnZQY7AFRJIj5odHRwczovL2FwaS5zaG9waWZ5LmNvbS9hdXRoL29yZ2FuaXphdGlvbi1pZGVudGl0eS5tYW5hZ2UGOwBUSSIPY29uZmlnLWtleQY7AFRJIgxkZWZhdWx0BjsAVA%3D%3D--2a4124364c1cd3646d1449ae0026c0ed2bf4f1eb; localization=IN; secure_customer_sig='
    };
    var request = http.Request(
        'POST',
        Uri.parse(
            'https://prex-prex-prex.myshopify.com/api/2021-07/graphql.json'));
    request.body = json.encode({
      "query":
          "mutation RegisterAccount(\n    \$email: String!, \n    \$password: String!,  \n   \$firstName: String!, \n    \$lastName: String!, \n    \$acceptsMarketing: Boolean = false,\n) {\n    customerCreate(input: {\n        email: \$email, \n        password: \$password, \n        firstName: \$firstName, \n        lastName: \$lastName,\n        acceptsMarketing: \$acceptsMarketing, \n    }) {\n        customer {\n            id\n        }\n        customerUserErrors {\n            code\n            message\n        }\n    }\n}\n",
      "variables": {
        "email": email.text,
        "password": password.text,
        "firstName": firstName.text,
        "lastName": lastName.text,
        "acceptsMarketing": true
      }
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send().catchError((e){
      Get.snackbar('Oops' , '${e.toString()}');
      });

    if (response.statusCode == 200) {
      list = await response.stream.bytesToString();
      print("_______$list");
       var obj = SignUpModel.fromJson(json.decode(list));
       print(obj);
      if(obj.data?.customerCreate?.customerUserErrors?.length==0){
        Get.back();
        Get.snackbar('Success', 'You have signed up');
        print('this is code    '+obj.data?.customerCreate?.customer['id']);

      }else if(obj.data?.customerCreate?.customerUserErrors?.length!=0){
        Get.snackbar(obj.data?.customerCreate?.customerUserErrors?[0].code??'', obj.data?.customerCreate?.customerUserErrors?[0].message??'');
      }
      return obj;
    }
    else {
      print(response.reasonPhrase);
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    firstName.clear();
    email.clear();
    password.clear();
  }
}
