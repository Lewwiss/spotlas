import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  Bar(this.barTitle);
  final String barTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 18.00, horizontal: 0.00),
      color: Colors.white,
      child: Text(barTitle, style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.00,
          color: Colors.black,
          fontFamily: 'SFProDisplay',
        ),
      ),
    );
  }
}