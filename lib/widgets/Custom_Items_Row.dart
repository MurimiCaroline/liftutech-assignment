import 'package:flutter/material.dart';

class CustomItemRow extends StatelessWidget {
  const CustomItemRow({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      reverse: true,
      shrinkWrap: true,
      itemCount: 8,
      itemBuilder: (context, index) {
        List<String> texts = [
          'All Products',
          'Smartphone',
          'Wearable',
          'Camera',
              'Hi',
          'Hello',
          'Love',
          'Me'
        ];

        return Container(
          margin: EdgeInsets.all(6),
          padding: EdgeInsets.all(10),
          width: 80,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(10),
          ),
          child: InkWell(
            onTap: () {
              print("Love you");
            },
            child: Text(texts[index]),
          ),
        );
      },
    );
  }
}
