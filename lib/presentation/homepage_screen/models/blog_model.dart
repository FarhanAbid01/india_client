/// data : {"articles":{"edges":[{"node":{"id":"gid://shopify/Article/586733125844","title":"What does collagen do for your skin?","image":{"url":"https://cdn.shopify.com/s/files/1/0607/6029/3588/articles/elderly-woman-with-wrinkled-skin-pictures_csp2539118.jpg?v=1636716992"},"publishedAt":"2021-11-12T11:39:59Z","onlineStoreUrl":"https://prex-prex-prex.myshopify.com/blogs/news/what-does-collagen-do-for-your-skin"}},{"node":{"id":"gid://shopify/Article/586733158612","title":"What is Omega good for?","image":{"url":"https://cdn.shopify.com/s/files/1/0607/6029/3588/articles/omega-3-supplement-1200x628-facebook-1200x628.jpg?v=1636717068"},"publishedAt":"2021-11-12T11:39:47Z","onlineStoreUrl":"https://prex-prex-prex.myshopify.com/blogs/news/what-is-omega-good-for"}},{"node":{"id":"gid://shopify/Article/586733191380","title":"How can I stop joint pain?","image":{"url":"https://cdn.shopify.com/s/files/1/0607/6029/3588/articles/GettyImages-1145121584_header-1024x575.jpg?v=1636717170"},"publishedAt":"2021-11-12T11:39:29Z","onlineStoreUrl":"https://prex-prex-prex.myshopify.com/blogs/news/how-can-i-stop-joint-pain"}}]}}

class BlogModel {
  BlogModel({
      this.data,});

  BlogModel.fromJson(dynamic json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  Data? data;
BlogModel copyWith({  Data? data,
}) => BlogModel(  data: data ?? this.data,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

}

/// articles : {"edges":[{"node":{"id":"gid://shopify/Article/586733125844","title":"What does collagen do for your skin?","image":{"url":"https://cdn.shopify.com/s/files/1/0607/6029/3588/articles/elderly-woman-with-wrinkled-skin-pictures_csp2539118.jpg?v=1636716992"},"publishedAt":"2021-11-12T11:39:59Z","onlineStoreUrl":"https://prex-prex-prex.myshopify.com/blogs/news/what-does-collagen-do-for-your-skin"}},{"node":{"id":"gid://shopify/Article/586733158612","title":"What is Omega good for?","image":{"url":"https://cdn.shopify.com/s/files/1/0607/6029/3588/articles/omega-3-supplement-1200x628-facebook-1200x628.jpg?v=1636717068"},"publishedAt":"2021-11-12T11:39:47Z","onlineStoreUrl":"https://prex-prex-prex.myshopify.com/blogs/news/what-is-omega-good-for"}},{"node":{"id":"gid://shopify/Article/586733191380","title":"How can I stop joint pain?","image":{"url":"https://cdn.shopify.com/s/files/1/0607/6029/3588/articles/GettyImages-1145121584_header-1024x575.jpg?v=1636717170"},"publishedAt":"2021-11-12T11:39:29Z","onlineStoreUrl":"https://prex-prex-prex.myshopify.com/blogs/news/how-can-i-stop-joint-pain"}}]}

class Data {
  Data({
      this.articles,});

  Data.fromJson(dynamic json) {
    articles = json['articles'] != null ? Articles.fromJson(json['articles']) : null;
  }
  Articles? articles;
Data copyWith({  Articles? articles,
}) => Data(  articles: articles ?? this.articles,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (articles != null) {
      map['articles'] = articles?.toJson();
    }
    return map;
  }

}

/// edges : [{"node":{"id":"gid://shopify/Article/586733125844","title":"What does collagen do for your skin?","image":{"url":"https://cdn.shopify.com/s/files/1/0607/6029/3588/articles/elderly-woman-with-wrinkled-skin-pictures_csp2539118.jpg?v=1636716992"},"publishedAt":"2021-11-12T11:39:59Z","onlineStoreUrl":"https://prex-prex-prex.myshopify.com/blogs/news/what-does-collagen-do-for-your-skin"}},{"node":{"id":"gid://shopify/Article/586733158612","title":"What is Omega good for?","image":{"url":"https://cdn.shopify.com/s/files/1/0607/6029/3588/articles/omega-3-supplement-1200x628-facebook-1200x628.jpg?v=1636717068"},"publishedAt":"2021-11-12T11:39:47Z","onlineStoreUrl":"https://prex-prex-prex.myshopify.com/blogs/news/what-is-omega-good-for"}},{"node":{"id":"gid://shopify/Article/586733191380","title":"How can I stop joint pain?","image":{"url":"https://cdn.shopify.com/s/files/1/0607/6029/3588/articles/GettyImages-1145121584_header-1024x575.jpg?v=1636717170"},"publishedAt":"2021-11-12T11:39:29Z","onlineStoreUrl":"https://prex-prex-prex.myshopify.com/blogs/news/how-can-i-stop-joint-pain"}}]

class Articles {
  Articles({
      this.edges,});

  Articles.fromJson(dynamic json) {
    if (json['edges'] != null) {
      edges = [];
      json['edges'].forEach((v) {
        edges?.add(Edges.fromJson(v));
      });
    }
  }
  List<Edges>? edges;
Articles copyWith({  List<Edges>? edges,
}) => Articles(  edges: edges ?? this.edges,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (edges != null) {
      map['edges'] = edges?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// node : {"id":"gid://shopify/Article/586733125844","title":"What does collagen do for your skin?","image":{"url":"https://cdn.shopify.com/s/files/1/0607/6029/3588/articles/elderly-woman-with-wrinkled-skin-pictures_csp2539118.jpg?v=1636716992"},"publishedAt":"2021-11-12T11:39:59Z","onlineStoreUrl":"https://prex-prex-prex.myshopify.com/blogs/news/what-does-collagen-do-for-your-skin"}

class Edges {
  Edges({
      this.node,});

  Edges.fromJson(dynamic json) {
    node = json['node'] != null ? BlogNode.fromJson(json['node']) : null;
  }
  BlogNode? node;
Edges copyWith({  BlogNode? node,
}) => Edges(  node: node ?? this.node,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (node != null) {
      map['node'] = node?.toJson();
    }
    return map;
  }

}

/// id : "gid://shopify/Article/586733125844"
/// title : "What does collagen do for your skin?"
/// image : {"url":"https://cdn.shopify.com/s/files/1/0607/6029/3588/articles/elderly-woman-with-wrinkled-skin-pictures_csp2539118.jpg?v=1636716992"}
/// publishedAt : "2021-11-12T11:39:59Z"
/// onlineStoreUrl : "https://prex-prex-prex.myshopify.com/blogs/news/what-does-collagen-do-for-your-skin"

class BlogNode {
  BlogNode({
      this.id, 
      this.title, 
      this.image, 
      this.publishedAt, 
      this.onlineStoreUrl,});

  BlogNode.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    image = json['image'] != null ? Image.fromJson(json['image']) : null;
    publishedAt = json['publishedAt'];
    onlineStoreUrl = json['onlineStoreUrl'];
  }
  String? id;
  String? title;
  Image? image;
  String? publishedAt;
  String? onlineStoreUrl;
BlogNode copyWith({  String? id,
  String? title,
  Image? image,
  String? publishedAt,
  String? onlineStoreUrl,
}) => BlogNode(  id: id ?? this.id,
  title: title ?? this.title,
  image: image ?? this.image,
  publishedAt: publishedAt ?? this.publishedAt,
  onlineStoreUrl: onlineStoreUrl ?? this.onlineStoreUrl,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    if (image != null) {
      map['image'] = image?.toJson();
    }
    map['publishedAt'] = publishedAt;
    map['onlineStoreUrl'] = onlineStoreUrl;
    return map;
  }

}

/// url : "https://cdn.shopify.com/s/files/1/0607/6029/3588/articles/elderly-woman-with-wrinkled-skin-pictures_csp2539118.jpg?v=1636716992"

class Image {
  Image({
      this.url,});

  Image.fromJson(dynamic json) {
    url = json['url'];
  }
  String? url;
Image copyWith({  String? url,
}) => Image(  url: url ?? this.url,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    return map;
  }

}