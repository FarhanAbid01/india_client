// To parse this JSON data, do
//
//     final cartId = cartIdFromJson(jsonString);

import 'dart:convert';

CartId cartIdFromJson(String str) => CartId.fromJson(json.decode(str));

String cartIdToJson(CartId data) => json.encode(data.toJson());

class CartId {
  CartId({
    this.data,
  });

  Data? data;

  factory CartId.fromJson(Map<String, dynamic> json) => CartId(
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
  };
}

class Data {
  Data({
    this.cartCreate,
  });

  CartCreate? cartCreate;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    cartCreate: CartCreate.fromJson(json["cartCreate"]),
  );

  Map<String, dynamic> toJson() => {
    "cartCreate": cartCreate?.toJson(),
  };
}

class CartCreate {
  CartCreate({
    this.cart,
  });

  Cart? cart;

  factory CartCreate.fromJson(Map<String, dynamic> json) => CartCreate(
    cart: Cart.fromJson(json["cart"]),
  );

  Map<String, dynamic> toJson() => {
    "cart": cart?.toJson(),
  };
}

class Cart {
  Cart({
    this.id,
  });

  String? id;

  factory Cart.fromJson(Map<String, dynamic> json) => Cart(
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
  };
}
