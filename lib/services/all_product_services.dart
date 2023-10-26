import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:liftutech_assignment/model/all_products.dart';

class allProductsService {
  Future<List<allProducts>> getAll() async {
    const url = "https://api.escuelajs.co/api/v1/products";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as List;
      final allproducts = json.map((e) {
        return allProducts(
            id: e['id'],
            title: e['title'],
            price: e['price'],
            description: e['description']);
      }).toList();
      return allproducts;
    } else {
      print("Nothing found");
      throw Exception("Error fetching all products");
    }
  }
}
