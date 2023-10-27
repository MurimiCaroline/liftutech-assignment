import 'package:flutter/material.dart';

class itemContainer extends StatelessWidget {
  const itemContainer({
    super.key,
    required this.deviceWidth,
    required this.deviceHeight,
    required this.itemTitle,
    required this.itemDescription,
  });

  final double deviceWidth;
  final double deviceHeight;
  final String itemTitle;
  final String itemDescription;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: deviceHeight * 0.3,
      width: deviceWidth * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: deviceHeight * 0.18,
            width: deviceWidth * 0.6,
            decoration: BoxDecoration(
              color: Colors.blueGrey.shade300,
              image: DecorationImage(
                image: AssetImage('assets/images/clock.jpg'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          ListTile(
            title: Text(
              itemTitle,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            subtitle: Text(
              itemDescription,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
          Row(
            children: [
              Text("here"),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_box_rounded),
              ),
            ],
          )
        ],
      ),
    );
  }
}
