import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
     Color bodyColor = Colors.white;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/images/profile.jpg'),
       
      ),
      backgroundColor: bodyColor,
      ),
      body: Container(
        color: bodyColor,
      ),
    );
  }
}