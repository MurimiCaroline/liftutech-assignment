import 'package:flutter/material.dart';
import 'package:liftutech_assignment/provider/all_products_provider.dart';
import 'package:liftutech_assignment/widgets/Customtextformfield.dart';
import 'package:liftutech_assignment/widgets/displaycontainer.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<allProductsProvider>(context, listen: false).getAllProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    Color bodyColor = Colors.white;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: bodyColor,
          elevation: 0,
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
          ),
          title: const Text(
            'Hello, John',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.draw_outlined,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Consumer(
          builder: (context, value, child) {
            final allproducts = value?.allProducts;
            return ListView.builder(
                itemCount: allproducts.length,
                itemBuilder: (context, index) {
                  final allproduct = allproducts[index];
                  return ListTile(
                    title: Text(allproduct.title),
                    subtitle: Text(allproduct.description),
                  );
                });
          },
        )
        // Container(
        //   padding: const EdgeInsets.all(8.0),
        //   color: bodyColor,
        // child: const Column(
        // children: [
        //  customTextForm(
        //   fieldIcon: Icons.search,
        //   texthint: "Search for brand",
        //  ),
        //   displayContainer(),
        // ],
        // ),
        // ),
        );
  }
}
