import 'package:flutter/material.dart';
import 'product_list.dart';
import 'product_edit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const ProductList(),
        '/add-product': (context) => const ProductAddEdit(),
        '/edit-product': (context) => const ProductAddEdit(),
      },
    );
  }
}
