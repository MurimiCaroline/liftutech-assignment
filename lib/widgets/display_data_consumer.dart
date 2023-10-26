import 'package:flutter/material.dart';
import 'package:liftutech_assignment/provider/all_products_provider.dart';
import 'package:provider/provider.dart';

class AllProductsConsumer extends StatelessWidget {
  const AllProductsConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<allProductsProvider>(
      builder: (context, value, child) {
        final allproducts = value.allproducts;
        if (value.allProductsLoading) {
          return const Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.amberAccent,
              semanticsLabel: "Loading",
            ),
          );
        } else if (allproducts.isEmpty) {
          return const Center(
            child: Text(
                "No products found. Please check your internet connection."),
          );
        } else {
          return SizedBox(
            height: allproducts.length.toDouble() * 10,
            width: MediaQuery.of(context).size.width * 0.9,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: allproducts.take(8).map((allproduct) {
                return Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.grey[200],
                  ),
                  child: Column(
                    children: [
                      Text(allproduct.title ?? "Title not retrieved"),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Text(allproduct.description ??
                            "Description not retrieved"),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          );
        }
      },
    );
  }
}
