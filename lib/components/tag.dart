import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  final String itemTag;
  Tag(this.itemTag);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8.00),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(itemTag, style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18.00,
            fontFamily: 'SFProDisplay',
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          minimumSize: Size(0, 0),
          padding: EdgeInsets.symmetric(vertical: 6.00, horizontal: 8.00),
        ),
      ),
    );
  }
}
