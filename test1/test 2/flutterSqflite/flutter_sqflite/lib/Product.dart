import 'package:scoped_model/scoped_model.dart';

class Product extends Model {
  final String productName;
  final String productDescription;
  final int productPrice;
  final String productImage;

  Product(
    this.productName,
    this.productDescription,
    this.productPrice,
    this.productImage,
  );
  factory Product.fromMap(Map<String, dynamic> json) {
    return Product(
      json['productName'],
      json['productDescription'],
      json['productPrice'],
      json['productImage'],
    );
  }
  void updateRating(int myRating) {
    notifyListeners();
  }

  static List<Product> getProducts() {
    List<Product> items = <Product>[];

    items.add(Product('Iphone', 'Very Expensice', 30000, 'CheckBox.png'));
    items.add(Product('Techno', 'Expensice', 2000, 'CheckBox.png'));
    items.add(Product('Infiniz', 'Cheap', 1000, 'CheckBox.png'));
    items.add(Product('Iphone', 'Very Cheap', 500, 'CheckBox.png'));
    return items;
  }
}
