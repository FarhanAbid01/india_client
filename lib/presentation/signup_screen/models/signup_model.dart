// To parse this JSON data, do
//
//     final signUp = signUpFromJson(jsonString);

import 'dart:convert';

SignUpModel signUpFromJson(String str) => SignUpModel.fromJson(json.decode(str));

String signUpToJson(SignUpModel data) => json.encode(data.toJson());

class SignUpModel {
    SignUpModel({
        this.data,
    });

    Data? data;

    factory SignUpModel.fromJson(Map<String, dynamic> json) => SignUpModel(
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
    };
}

class Data {
    Data({
        this.customerCreate,
    });

    CustomerCreate? customerCreate;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        customerCreate: CustomerCreate.fromJson(json["customerCreate"]),
    );

    Map<String, dynamic> toJson() => {
        "customerCreate": customerCreate?.toJson(),
    };
}

class CustomerCreate {
    CustomerCreate({
        this.customer,
        this.customerUserErrors,
    });

    dynamic customer;
    List<CustomerUserError>? customerUserErrors;

    factory CustomerCreate.fromJson(Map<String, dynamic> json) => CustomerCreate(
        customer: json["customer"],
        customerUserErrors: List<CustomerUserError>.from(json["customerUserErrors"].map((x) => CustomerUserError.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "customer": customer,
        "customerUserErrors": List<dynamic>.from(customerUserErrors!.map((x) => x.toJson())),
    };
}

class CustomerUserError {
    CustomerUserError({
        this.code,
        this.message,
    });

    String? code;
    String? message;

    factory CustomerUserError.fromJson(Map<String, dynamic> json) => CustomerUserError(
        code: json["code"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
    };
}
