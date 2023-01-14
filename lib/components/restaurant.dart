import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Restaurant extends StatelessWidget {
  final String itemRestaurant;
  Restaurant(this.itemRestaurant);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12.00, 12.00, 24.00, 12.00),
      child: Row(
        children: [
          CircleAvatar(
            radius: 33.00,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundColor: Colors.black,
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
                Text("Pachamama", style: TextStyle(
                  fontSize: 18.00,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
                SizedBox(
                    height: 4.00
                ),
                Text("Peruvian • Marylebone", style: TextStyle(
                  fontSize: 15.00,
                  fontWeight: FontWeight.normal,
                  color: Colors.white70,
                )),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/Star_Border.svg', color: Colors.white, width: 28.00, height: 28.00),
          ),
        ],
      ),
    );
  }
}
