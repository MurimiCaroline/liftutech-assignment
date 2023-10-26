import 'package:flutter/material.dart';

class customTextForm extends StatelessWidget {
  final String texthint;
  final IconData fieldIcon;
  const customTextForm(
      {super.key, required this.texthint, required this.fieldIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: texthint,
            prefixIcon: Icon(fieldIcon),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            fillColor: Colors.grey[200],
            filled: true),
      ),
    );
  }
}
