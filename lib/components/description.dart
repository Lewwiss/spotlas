import 'package:flutter/material.dart';

const String name = "nataliestevens";
const String desc = "  dfgdfgfg dhfjhdjfhfhdjf hjfdhj";

class Description extends StatefulWidget {
  const Description({Key? key}) : super(key: key);

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(12.00, 0.00, 12.00, 6.00),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.00,
                color: Colors.black,
              )
            ),
            TextSpan(
              text: desc,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 18.00,
                color: Colors.black,
              )
            )
          ]
        )
      )
    );
  }
}
