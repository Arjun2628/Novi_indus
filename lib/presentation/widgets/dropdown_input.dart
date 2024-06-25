import 'package:flutter/material.dart';

class DropdownInputWidget extends StatelessWidget {
  final String? tileName;
  final String? hintText;
  final Icon trailingIcon;

  const DropdownInputWidget({
    super.key,
    this.tileName,
    this.hintText,
    required this.trailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // bool
    // if(trailing!=null){

    // }
    return Column(
      children: [
        Align(alignment: Alignment.centerLeft, child: Text(tileName ?? "")),
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
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: hintText ?? "",
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: height * 0.025),
                  child: trailingIcon,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
