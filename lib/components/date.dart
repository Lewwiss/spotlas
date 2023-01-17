import 'package:flutter/material.dart';

class Date extends StatelessWidget {
  final String date;
  const Date(this.date, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(12.00, 8.00, 12.00, 24.00),
      child: Text(date, style: const TextStyle(
        fontSize: 16.00,
        fontWeight: FontWeight.normal,
        color: Colors.black38,
        fontFamily: 'SFProDisplay',
      ))
    );
  }
}
