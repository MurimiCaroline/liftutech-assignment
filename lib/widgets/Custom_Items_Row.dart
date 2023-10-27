import 'package:flutter/material.dart';

class CustomItemRow extends StatelessWidget {
  const CustomItemRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 4,
          itemBuilder: (context, index) {
            List<String> texts = [
              'All Products',
              'Smartphone',
              'Wearable',
              'Camera'
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
        ),
      ],
    );
  }
}
