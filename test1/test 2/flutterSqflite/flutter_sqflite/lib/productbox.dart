import 'package:flutter/material.dart';

import 'Product.dart';

class ProductBox extends StatelessWidget {
  ProductBox({Key? key, required this.item}) : super(key: key);
  final Product item;
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 140,
        child: Card(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //Image.asset("assets/images/" + this.item.productImage),
                Expanded(
                    child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(this.item.productImage),
                            Text(this.item.productName,
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(this.item.productDescription),
                            Text("Price: " + this.item.productPrice.toString()),
                            //RatingBox(),
                          ],
                        )))
              ]),
        ));
  }
}
