import 'package:flutter/material.dart';

class displayContainer extends StatelessWidget {
  const displayContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.grey[200],
      ),
    );
  }
}