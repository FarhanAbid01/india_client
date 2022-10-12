// To parse this JSON data, do
//
//     final homepageModel = homepageModelFromJson(jsonString);

import 'dart:convert';

HomepageModel homepageModelFromJson(String str) =>
    HomepageModel.fromJson(json.decode(str));

String homepageModelToJson(HomepageModel data) => json.encode(data.toJson());

class HomepageModel {
  HomepageModel({
    this.data,
  });

  Data? data;

  factory HomepageModel.fromJson(Map<String, dynamic> json) => HomepageModel(
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
      };
}

class Data {
  Data({
    this.collections,
  });

  Collections? collections;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        collections: Collections.fromJson(json["collections"]),
      );

  Map<String, dynamic> toJson() => {
        "collections": collections?.toJson(),
      };
}

class Collections {
  Collections({
    this.nodes,
  });

  List<NodeElement>? nodes;

  factory Collections.fromJson(Map<String, dynamic> json) => Collections(
        nodes: List<NodeElement>.from(
            json["nodes"].map((x) => NodeElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "nodes": List<dynamic>.from(nodes!.map((x) => x.toJson())),
      };
}

class NodeElement {
  NodeElement({
    this.title,
    this.products,
  });

  String? title;
  Products? products;

  factory NodeElement.fromJson(Map<String, dynamic> json) => NodeElement(
        title: json["title"],
        products: Products.fromJson(json["products"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "products": products?.toJson(),
      };
}

class Products {
  Products({
    this.edges,
  });

  List<ProductsEdge>? edges;

  factory Products.fromJson(Map<String, dynamic> json) => Products(
        edges: List<ProductsEdge>.from(
            json["edges"].map((x) => ProductsEdge.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "edges": List<dynamic>.from(edges!.map((x) => x.toJson())),
      };
}

class ProductsEdge {
  ProductsEdge({
    this.node,
  });

  PurpleNode? node;

  factory ProductsEdge.fromJson(Map<String, dynamic> json) => ProductsEdge(
        node: PurpleNode.fromJson(json["node"]),
      );

  Map<String, dynamic> toJson() => {
        "node": node?.toJson(),
      };
}

class PurpleNode {
  PurpleNode({
    this.id,
    this.title,
    this.description,
    this.images,
    this.variants,
  });

  String? id;
  String? title;
  String? description;
  Images? images;
  Variants? variants;

  factory PurpleNode.fromJson(Map<String, dynamic> json) => PurpleNode(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        images: Images.fromJson(json["images"]),
        variants: Variants.fromJson(json["variants"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "images": images?.toJson(),
        "variants": variants?.toJson(),
      };
}

class Images {
  Images({
    this.edges,
  });

  List<ImagesEdge>? edges;

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        edges: List<ImagesEdge>.from(
            json["edges"].map((x) => ImagesEdge.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "edges": List<dynamic>.from(edges!.map((x) => x.toJson())),
      };
}

class ImagesEdge {
  ImagesEdge({
    this.node,
  });

  FluffyNode? node;

  factory ImagesEdge.fromJson(Map<String, dynamic> json) => ImagesEdge(
        node: FluffyNode.fromJson(json["node"]),
      );

  Map<String, dynamic> toJson() => {
        "node": node?.toJson(),
      };
}

class FluffyNode {
  FluffyNode({
    this.src,
  });

  String? src;

  factory FluffyNode.fromJson(Map<String, dynamic> json) => FluffyNode(
        src: json["src"],
      );

  Map<String, dynamic> toJson() => {
        "src": src,
      };
}

class Variants {
  Variants({
    this.edges,
  });

  List<VariantsEdge>? edges;

  factory Variants.fromJson(Map<String, dynamic> json) => Variants(
        edges: List<VariantsEdge>.from(
            json["edges"].map((x) => VariantsEdge.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "edges": List<dynamic>.from(edges!.map((x) => x.toJson())),
      };
}

class VariantsEdge {
  VariantsEdge({
    this.node,
  });

  TentacledNode? node;

  factory VariantsEdge.fromJson(Map<String, dynamic> json) => VariantsEdge(
        node: TentacledNode.fromJson(json["node"]),
      );

  Map<String, dynamic> toJson() => {
        "node": node?.toJson(),
      };
}

class TentacledNode {
  TentacledNode({
    this.id,
    this.price,
    this.compareAtPrice,
    this.image,
  });

  String? id;
  String? price;
  String? compareAtPrice;
  Image? image;

  factory TentacledNode.fromJson(Map<String, dynamic> json) => TentacledNode(
        id: json["id"],
        price: json["price"],
        compareAtPrice:
            json["compareAtPrice"] == null ? null : json["compareAtPrice"],
        image: Image.fromJson(json["image"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "price": price,
        "compareAtPrice": compareAtPrice == null ? null : compareAtPrice,
        "image": image?.toJson(),
      };
}

class Image {
  Image({
    this.url,
  });

  String? url;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
      };
}
