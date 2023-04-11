import 'package:flutter/material.dart';
import 'package:flutter_sqflite/Product.dart';
import 'productboxlist.dart';
import 'productpage.dart';
import 'productbox.dart';
import 'main.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<Product>> fetchAlbum(String productName) async {
  final response = await http.get(
    Uri.parse('http://192.168.43.94:5000/products/63142d7d731060e156356fae'),
  );

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return parseProducts(response.body);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

Future<List<Product>> updateProduct(String productName) async {
  final response = await http.put(
    Uri.parse('http://192.168.43.94:5000/products/63142d7d731060e156356fae'),
    body: jsonEncode(<String, String>{
      'productName': productName,
    }),
  );

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return parseProducts(response.body);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to update album.');
  }
}

class addProductPage extends StatefulWidget {
  addProductPage({Key? key}) : super(key: key);

  @override
  State<addProductPage> createState() => _addProductPageState();
}

class _addProductPageState extends State<addProductPage> {
  final TextEditingController _controller = TextEditingController();

  late Future<List<Product>> _futureAlbum;

  void initState() {
    super.initState();
    _futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add product',
          style: TextStyle(color: Colors.pink),
        ),
      ),
      body: Container(
        child: FutureBuilder<List<Product>>(
          future: products,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    Text(snapshot.data!.productName),
                    TextField(
                      controller: _controller,
                      decoration:
                          const InputDecoration(hintText: 'Enter product name'),
                    ),
                    /*TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                          hintText: 'Enter productDescription'),
                    ),
                    TextField(
                      controller: _controller,
                      decoration:
                          const InputDecoration(hintText: 'Enter productPrice'),
                    ),
                    TextField(
                      controller: _controller,
                      decoration:
                          const InputDecoration(hintText: 'Enter productImage'),
                    ),*/
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _futureAlbum = updateProduct(_controller.text);
                        });
                      },
                      child: const Text('Update Data'),
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
