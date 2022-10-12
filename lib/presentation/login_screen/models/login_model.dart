// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
    LoginModel({
        this.data,
    });

    Data? data;

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
    };
}

class Data {
    Data({
        this.customerAccessTokenCreate,
    });

    CustomerAccessTokenCreate? customerAccessTokenCreate;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        customerAccessTokenCreate: CustomerAccessTokenCreate.fromJson(json["customerAccessTokenCreate"]),
    );

    Map<String, dynamic> toJson() => {
        "customerAccessTokenCreate": customerAccessTokenCreate?.toJson(),
    };
}

class CustomerAccessTokenCreate {
    CustomerAccessTokenCreate({
        this.customerAccessToken,
        this.customerUserErrors,
    });

    dynamic customerAccessToken;
    List<CustomerUserError>? customerUserErrors;

    factory CustomerAccessTokenCreate.fromJson(Map<String, dynamic> json) => CustomerAccessTokenCreate(
        customerAccessToken: json["customerAccessToken"],
        customerUserErrors: List<CustomerUserError>.from(json["customerUserErrors"].map((x) => CustomerUserError.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "customerAccessToken": customerAccessToken,
        "customerUserErrors": List<dynamic>.from(customerUserErrors!.map((x) => x.toJson())),
    };
}

class CustomerUserError {
    CustomerUserError({
        this.code,
        this.message,
        this.field,
    });

    String? code;
    String? message;
    dynamic field;

    factory CustomerUserError.fromJson(Map<String, dynamic> json) => CustomerUserError(
        code: json["code"],
        message: json["message"],
        field: json["field"],
    );

    Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "field": field,
    };
}
