import 'package:flutter/material.dart';
import 'package:liftutech_assignment/features/homepage.dart';
import 'package:liftutech_assignment/model/all_products.dart';
import 'package:liftutech_assignment/provider/all_products_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => allProductsProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'E-Commerce App',
        home: HomePage(),
      ),
    );
  }
}
