import 'package:test1/models/products.dart';
import 'package:http/http.dart' as http;
import 'dart:developer';

class RemoteService {
  Future<List<Products>?> getProducts() async {
    var client = http.Client();

    var uri = Uri.parseIPv6Address('http://localhost:5000/products');

    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;
      return productsFromJson(json);
    } else {
      log('your message here');
    }
  }
}
