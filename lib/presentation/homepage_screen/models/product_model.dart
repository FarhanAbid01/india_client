import 'package:saturn_flutter/presentation/homepage_screen/models/homepage_model.dart';

class ProductModel {
  ProductModel({
    this.node,
    this.quantity=0
  });

  PurpleNode? node;
  int quantity;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    node: json["node"] == null ? null : PurpleNode.fromJson(json["node"]),
    quantity: json["quantity"] ,
  );

  Map<String, dynamic> toJson() => {
    "node": node == null ? null : node?.toJson(),
    "quantity": quantity
  };
}
