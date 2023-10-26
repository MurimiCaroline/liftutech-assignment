import 'package:flutter/material.dart';

class displayContainer extends StatelessWidget {
  const displayContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.lightGreenAccent[200],
          ),
          child: const Column(
            children: [
              Text("Title"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Text("Description"),
              ),
            ],
          ),
        );
      },
    );
  }
}
