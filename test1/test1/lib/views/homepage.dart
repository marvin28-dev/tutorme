import 'package:flutter/material.dart';
import 'package:test1/models/products.dart';
import 'package:test1/services/remoteservices.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Products>? products;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();

    getData();
  }

  getData() async {
    products = await RemoteService().getProducts();
    if (products != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Posts'),
        ),
        body: Visibility(
          visible: isLoaded,
          child: ListView.builder(
              itemCount: products?.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Text(products![index].productname),
                );
              }),
          replacement: Center(
            child: CircularProgressIndicator(),
          ),
        ));
  }
}
