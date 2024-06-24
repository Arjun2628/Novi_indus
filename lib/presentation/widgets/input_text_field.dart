import 'package:flutter/material.dart';

class InputTileWidget extends StatelessWidget {
  final String tileName;
  final String hintText;
  const InputTileWidget(
      {super.key, required this.tileName, required this.hintText});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Align(alignment: Alignment.centerLeft, child: Text(tileName)),
        Container(
          width: double.infinity,
          height: height * 0.070,
          decoration: BoxDecoration(
            color: Colors.grey[300], // Background color
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(width: 0.5, color: Colors.grey), // Border radius
            boxShadow: [
              // Optional: add box shadow for better visual effect
            ],
          ),
          child: Padding(
            padding: EdgeInsets.only(left: height * 0.020),
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),
        )
      ],
    );
  }
}
