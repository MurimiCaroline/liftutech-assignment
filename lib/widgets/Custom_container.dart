import 'package:flutter/material.dart';

class CustomBigContainer extends StatelessWidget {
  const CustomBigContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 200,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.amberAccent,
      ),
    );
  }
}
