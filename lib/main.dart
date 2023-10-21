import 'package:flutter/material.dart';
import 'package:liftutech_assignment/features/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce App',
      home: HomePage(),
    );
  }
}

