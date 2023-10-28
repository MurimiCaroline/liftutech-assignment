import 'package:flutter/material.dart';
import 'package:liftutech_assignment/provider/all_products_provider.dart';
import 'package:liftutech_assignment/widgets/Custom_Items_Row.dart';
import 'package:liftutech_assignment/widgets/Custom_container.dart';
import 'package:liftutech_assignment/widgets/Customtextformfield.dart';
import 'package:liftutech_assignment/widgets/display_data_consumer.dart';
import 'package:liftutech_assignment/widgets/displaycontainer.dart';
import 'package:liftutech_assignment/widgets/item_with_price_container.dart';
// import 'package:liftutech_assignment/widgets/Customtextformfield.dart';
// import 'package:liftutech_assignment/widgets/displaycontainer.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Provider.of<allProductsProvider>(context, listen: false)
          .getAllProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height.toDouble();
    double deviceWidth = MediaQuery.of(context).size.width.toDouble();
    Color bodyColor = Colors.white;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bodyColor,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            // backgroundImage: AssetImage('assets/images/profile.jpg'),
            backgroundColor: Colors.amberAccent,
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customTextForm(texthint: "Search", fieldIcon: Icons.search),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CustomBigContainer(),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(height: deviceHeight * 0.06, child: CustomItemRow()),
          Row(
            children: [
              Text(
                "New Arrival",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text(
                "View All",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: itemContainer(
              deviceHeight: deviceHeight,
              deviceWidth: deviceWidth*0.6,
              itemTitle: "Item 1",
              itemDescription:
                  "Description goes here,  we are happy and happy and happy and happy  and happy ",
            ),
          ),
        ],
      ),
    );
  }
}
