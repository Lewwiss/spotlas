import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Author extends StatelessWidget {
  final String itemAuthor;
  Author(this.itemAuthor);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12.00, 12.00, 24.00, 12.00),
      child: Row(
        children: [
          CircleAvatar(
            radius: 33.00,
            backgroundColor: Colors.green,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 28.00,
            ),
          ),
          SizedBox(
            width: 12.00,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("nataliestevens", style: TextStyle(
                  fontSize: 18.00,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
                SizedBox(
                  height: 4.00
                ),
                Text("Natalie Stevens", style: TextStyle(
                  fontSize: 15.00,
                  fontWeight: FontWeight.normal,
                  color: Colors.white70,
                )),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/Options.svg', color: Colors.white, width: 28.00, height: 28.00),
          ),
        ],
      ),
    );
  }
}