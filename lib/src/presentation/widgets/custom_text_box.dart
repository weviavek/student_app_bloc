import 'package:flutter/material.dart';

class CustomTextBox extends StatelessWidget {
  final double availableWidth;
  final String itemCaption;
  final String item;
  const CustomTextBox({
    Key? key,
    required this.availableWidth,
    required this.itemCaption,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: availableWidth * .1, right: availableWidth * .1),
      child: Row(
        children: [
          SizedBox(width: availableWidth * 0.2, child: Text(itemCaption)),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(":"),
          ),
          SizedBox(
              child: Text(
            item,
            overflow: TextOverflow.ellipsis,
          ))
        ],
      ),
    );
  }
}
