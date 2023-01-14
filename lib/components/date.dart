import 'package:flutter/material.dart';

class Date extends StatelessWidget {
  final String itemDate;
  Date(this.itemDate);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(12.00, 6.00, 12.00, 24.00),
      child: Text(itemDate, style: TextStyle(
        fontSize: 15.00,
        fontWeight: FontWeight.normal,
        color: Colors.black26,
        fontFamily: 'SFProDisplay',
      ))
    );
  }
}
