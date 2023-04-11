import 'package:flutter/material.dart';
import 'package:flutter_sqflite/addingItem.dart';
import 'package:flutter_sqflite/productboxlist.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'Product.dart';

void main() => runApp(MyApp(
      products: fetchProducts(),
    ));
List<Product> parseProducts(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Product>((json) => Product.fromMap(json)).toList();
}

Future<List<Product>> fetchProducts() async {
  final response =
      await http.get(Uri.parse('http://192.168.43.94:5000/products'));
  //''http://192.168.43.94:8000/products.json, 'http://localhost:5000/products
  if (response.statusCode == 200) {
    return parseProducts(response.body);
  } else {
    throw Exception('Unable to fetch products from the REST API');
  }
}

Future<List<Product>> updateProducts(String productName) async {
  final response = await http.put(
    Uri.parse('http://192.168.43.94:5000/products/add'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
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

class MyApp extends StatefulWidget {
  final Future<List<Product>> products;
  MyApp({Key? key, required this.products}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
          title: 'Product Navigation demo home page',
          products: widget.products),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  final Future<List<Product>> products;
  MyHomePage({Key? key, required this.title, required this.products})
      : super(key: key);
  // final items = Product.getProducts();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Navigation")),
      body: Center(
        child: FutureBuilder<List<Product>>(
          future: products,
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);
            return snapshot.hasData
                ? ProductBoxList(
                    items: snapshot.data ?? []) // return the ListView widget
                : Center(child: CircularProgressIndicator());
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push((context),
              MaterialPageRoute(builder: (context) => addProductPage()));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}
