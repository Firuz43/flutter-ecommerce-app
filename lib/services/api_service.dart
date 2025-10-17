import 'dart:convert';

import 'package:ecommerce_app/models/product.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "http://10.0.2.2:8080/api"; //updated to 10.0.2.2

  Future<String> getHello() async {
    //this one Uri.parse will turn out url to http object
    final url = Uri.parse('$baseUrl/hello');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  Future<List<Product>> getProducts() async {
    final url = Uri.parse('$baseUrl/products');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      List<dynamic> jsonList = json.decode(response.body);
    }
  }
}
