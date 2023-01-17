import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  final String tag;
  const Tag(this.tag, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8.00),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          minimumSize: const Size(0, 0),
          elevation: 4.00,
          padding: const EdgeInsets.symmetric(vertical: 8.00, horizontal: 8.00),
        ),
        child: Text(tag, style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 17.00,
          fontFamily: 'SFProDisplay',
          ),
        ),
      ),
    );
  }
}
