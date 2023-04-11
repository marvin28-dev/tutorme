import 'package:flutter/material.dart';
import 'package:testing2app/model/product_model.dart';
import 'package:testing2app/product_item.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key, this.model}) : super(key: key);

  final ProductModel? model;

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<ProductModel> products = List<ProductModel>.empty(growable: true);

  @override
  void iniState() {
    super.initState();

    products.add(ProductModel(
      id: "1",
      productName: "Marvin",
      productDescription: "the best that ever did it",
      productImage:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/No-Image-Placeholder.svg/1665px-No-Image-Placeholder.svg.png",
      productPrice: 500,
    ));
    products.add(
      ProductModel(
        id: "2",
        productName: "Newguy",
        productDescription: "dont call this name",
        productImage:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/No-Image-Placeholder.svg/1665px-No-Image-Placeholder.svg.png",
        productPrice: 100,
      ),
    );
  }

  Widget productList(products) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Colors.green,
                    minimumSize: const Size(88, 36),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
                onPressed: () {},
                child: const Text('Add products'),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return ProductItem(
                      model: products[index],
                      onDelete: (ProductModel model) {},
                    );
                  }),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CRUD'),
        elevation: 0,
      ),
      //backgroundColor: Colors.green[200],
      body: productList(products),
    );
  }
}
