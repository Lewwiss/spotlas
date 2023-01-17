import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Toolbar extends StatelessWidget {
  const Toolbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 10.00, horizontal: 0.00),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/Map_Border.svg', height: 28.00, width: 28.00)
          ),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/Speech_Bubble_Border.svg', height: 28.00, width: 28.00)
          ),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/Heart_Border.svg', width: 28.00, height: 28.00)
          ),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/Paper_Plane_Border.svg', height: 28.00, width: 28.00)
          ),
        ],
      )
    );
  }
}
