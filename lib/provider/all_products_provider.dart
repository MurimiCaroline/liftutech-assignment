import 'package:flutter/cupertino.dart';
import 'package:liftutech_assignment/model/all_products.dart';
import 'package:liftutech_assignment/services/all_product_services.dart';

class allProductsProvider extends ChangeNotifier {
  final _service = allProductsService();
  bool allProductsLoading = false;
  List<allProducts> _allproducts = [];
  List<allProducts> get allproducts => _allproducts;

  Future<void> getAllProducts() async {
    allProductsLoading = true;
    notifyListeners();
    final response = await _service.getAll();
    _allproducts = response;
    allProductsLoading = false;
    notifyListeners();
  }
}
