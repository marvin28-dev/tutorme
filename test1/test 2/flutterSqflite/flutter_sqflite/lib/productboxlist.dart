import 'package:flutter/material.dart';
import 'package:flutter_sqflite/productbox.dart';
import 'package:flutter_sqflite/productpage.dart';

import 'Product.dart';

class ProductBoxList extends StatelessWidget {
  final List<Product> items;
  ProductBoxList({Key? key, required this.items});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          child: ProductBox(item: items[index]),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductPage(item: items[index]),
              ),
            );
          },
        );
      },
    );
  }
}
