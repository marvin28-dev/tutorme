import 'package:flutter/material.dart';

import 'Product.dart';

class ProductPage extends StatelessWidget {
  ProductPage({Key? key, required this.item}) : super(key: key);
  final Product item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.item.productName),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset("assets/images/" + this.item.productImage),
                Expanded(
                    child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(this.item.productName,
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(this.item.productDescription),
                            Text("Price: " + this.item.productPrice.toString()),
                            //RatingBox(),
                          ],
                        )))
              ]),
        ),
      ),
    );
  }
}
