import 'package:flutter/material.dart';
import 'package:testing2app/model/product_model.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key, this.model, this.onDelete}) : super(key: key);

  final ProductModel? model;
  final Function? onDelete;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: productWidget(context),
      ),
    );
  }

  Widget productWidget(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            width: 120,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(100),
            child: Image.network(
              (model!.productImage == null || model!.productImage == "")
                  ? "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/No-Image-Placeholder.svg/1665px-No-Image-Placeholder.svg.png"
                  : model!.productImage!,
              height: 70,
              fit: BoxFit.scaleDown,
            ))
      ],
    );
  }
}
