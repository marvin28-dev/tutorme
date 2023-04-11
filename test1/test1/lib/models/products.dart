import 'dart:convert';

List<Products> productsFromJson(String str) =>
    List<Products>.from(json.decode(str).map((x) => Products.fromJson(x)));

String productsToJson(List<Products> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Products {
  Products({
    this.id,
    required this.productname,
    this.productdescription,
    this.productprice,
    this.date,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.productimage,
    this.productName,
    this.productDescription,
    this.productPrice,
    this.productImage,
  });

  String? id;
  String productname;
  String? productdescription;
  int? productprice;
  String? date;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  String? productimage;
  String? productName;
  String? productDescription;
  int? productPrice;
  String? productImage;

  factory Products.fromJson(Map<String, dynamic> json) => Products(
        id: json["_id"],
        productname: json["productname"] == null ? null : json["productname"],
        productdescription: json["productdescription"] == null
            ? null
            : json["productdescription"],
        productprice:
            json["productprice"] == null ? null : json["productprice"],
        date: json["date"] == null ? null : json["date"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        productimage:
            json["productimage"] == null ? null : json["productimage"],
        productName: json["productName"] == null ? null : json["productName"],
        productDescription: json["productDescription"] == null
            ? null
            : json["productDescription"],
        productPrice:
            json["productPrice"] == null ? null : json["productPrice"],
        productImage:
            json["productImage"] == null ? null : json["productImage"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "productname": productname == null ? null : productname,
        "productdescription":
            productdescription == null ? null : productdescription,
        "productprice": productprice == null ? null : productprice,
        "date": date == null ? null : date,
        "createdAt": createdAt!.toIso8601String(),
        "updatedAt": updatedAt!.toIso8601String(),
        "__v": v,
        "productimage": productimage == null ? null : productimage,
        "productName": productName == null ? null : productName,
        "productDescription":
            productDescription == null ? null : productDescription,
        "productPrice": productPrice == null ? null : productPrice,
        "productImage": productImage == null ? null : productImage,
      };
}
