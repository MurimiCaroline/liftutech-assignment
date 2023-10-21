import 'package:flutter/material.dart';
import 'package:liftutech_assignment/widgets/displaycontainer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
      title: const Text('Hello, John',style: TextStyle(color: Colors.black),),
     actions: [
        IconButton(
          onPressed: (){},
          icon: const Icon(Icons.notifications_none,color: Colors.black,),
        ),
        IconButton(
          onPressed: (){},
          icon: const Icon(Icons.draw_outlined,color: Colors.black,),
        ),
     ],
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        color: bodyColor,
      child: Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Search for brand',
            prefixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none
            ),
            fillColor: Colors.grey[200],
            filled: true
          ),
        ),
        displayContainer(),
      ],
      ),
      ),
    );
  }
}