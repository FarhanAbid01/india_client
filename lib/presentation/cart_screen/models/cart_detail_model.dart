// To parse this JSON data, do
//
//     final cartDetailModel = cartDetailModelFromJson(jsonString);

import 'dart:convert';

CartDetailModel cartDetailModelFromJson(String str) => CartDetailModel.fromJson(json.decode(str));

String cartDetailModelToJson(CartDetailModel data) => json.encode(data.toJson());

class CartDetailModel {
  CartDetailModel({
    this.data,
  });

  Data? data;

  factory CartDetailModel.fromJson(Map<String, dynamic> json) => CartDetailModel(
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
  };
}

class Data {
  Data({
    this.cart,
  });

  Cart? cart;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    cart: Cart.fromJson(json["cart"]),
  );

  Map<String, dynamic> toJson() => {
    "cart": cart?.toJson(),
  };
}

class Cart {
  Cart({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.lines,
    this.attributes,
    this.cost,
    this.buyerIdentity,
  });

  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  Lines? lines;
  List<Attribute>? attributes;
  Cost? cost;
  BuyerIdentity? buyerIdentity;

  factory Cart.fromJson(Map<String, dynamic> json) => Cart(
    id: json["id"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    lines: Lines.fromJson(json["lines"]),
    attributes: List<Attribute>.from(json["attributes"].map((x) => Attribute.fromJson(x))),
    cost: Cost.fromJson(json["cost"]),
    buyerIdentity: BuyerIdentity.fromJson(json["buyerIdentity"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "lines": lines?.toJson(),
    "attributes": List<dynamic>.from(attributes!.map((x) => x.toJson())),
    "cost": cost?.toJson(),
    "buyerIdentity": buyerIdentity?.toJson(),
  };
}

class Attribute {
  Attribute({
    this.key,
    this.value,
  });

  String? key;
  String? value;

  factory Attribute.fromJson(Map<String, dynamic> json) => Attribute(
    key: json["key"],
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "key": key,
    "value": value,
  };
}

class BuyerIdentity {
  BuyerIdentity({
    this.email,
    this.phone,
    this.customer,
    this.countryCode,
  });

  dynamic email;
  dynamic phone;
  dynamic customer;
  dynamic countryCode;

  factory BuyerIdentity.fromJson(Map<String, dynamic> json) => BuyerIdentity(
    email: json["email"],
    phone: json["phone"],
    customer: json["customer"],
    countryCode: json["countryCode"],
  );

  Map<String, dynamic> toJson() => {
    "email": email,
    "phone": phone,
    "customer": customer,
    "countryCode": countryCode,
  };
}

class Cost {
  Cost({
    this.totalAmount,
    this.subtotalAmount,
    this.totalTaxAmount,
    this.totalDutyAmount,
  });

  Amount? totalAmount;
  Amount? subtotalAmount;
  Amount? totalTaxAmount;
  dynamic totalDutyAmount;

  factory Cost.fromJson(Map<String, dynamic> json) => Cost(
    totalAmount: Amount.fromJson(json["totalAmount"]),
    subtotalAmount: Amount.fromJson(json["subtotalAmount"]),
    totalTaxAmount: Amount.fromJson(json["totalTaxAmount"]),
    totalDutyAmount: json["totalDutyAmount"],
  );

  Map<String, dynamic> toJson() => {
    "totalAmount": totalAmount?.toJson(),
    "subtotalAmount": subtotalAmount?.toJson(),
    "totalTaxAmount": totalTaxAmount?.toJson(),
    "totalDutyAmount": totalDutyAmount,
  };
}

class Amount {
  Amount({
    this.amount,
    this.currencyCode,
  });

  String? amount;
  String? currencyCode;

  factory Amount.fromJson(Map<String, dynamic> json) => Amount(
    amount: json["amount"],
    currencyCode: json["currencyCode"],
  );

  Map<String, dynamic> toJson() => {
    "amount": amount,
    "currencyCode": currencyCode,
  };
}

class Lines {
  Lines({
    this.edges,
  });

  List<Edge>? edges;

  factory Lines.fromJson(Map<String, dynamic> json) => Lines(
    edges: List<Edge>.from(json["edges"].map((x) => Edge.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "edges": List<dynamic>.from(edges!.map((x) => x.toJson())),
  };
}

class Edge {
  Edge({
    this.node,
  });

  Node? node;

  factory Edge.fromJson(Map<String, dynamic> json) => Edge(
    node: Node.fromJson(json["node"]),
  );

  Map<String, dynamic> toJson() => {
    "node": node?.toJson(),
  };
}

class Node {
  Node({
    this.id,
    this.quantity,
    this.merchandise,
    this.attributes,
  });

  String? id;
  int? quantity;
  Merchandise? merchandise;
  List<dynamic>? attributes;

  factory Node.fromJson(Map<String, dynamic> json) => Node(
    id: json["id"],
    quantity: json["quantity"],
    merchandise: Merchandise.fromJson(json["merchandise"]),
    attributes: List<dynamic>.from(json["attributes"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "quantity": quantity,
    "merchandise": merchandise?.toJson(),
    "attributes": List<dynamic>.from(attributes!.map((x) => x)),
  };
}

class Merchandise {
  Merchandise({
    this.id,
  });

  String? id;

  factory Merchandise.fromJson(Map<String, dynamic> json) => Merchandise(
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
  };
}
