import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Author extends StatelessWidget {
  final String authorName, authorTag, authorImage;
  const Author(this.authorName, this.authorTag, this.authorImage, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(12.00),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4.00,
                  color: Colors.black54,
                )
              ],
            ),
            child: CircleAvatar(
              radius: 33.00,
              backgroundColor: Colors.pink,
              child: CircleAvatar(
                backgroundImage: NetworkImage(authorImage),
                radius: 28.00,
              ),
            ),
          ),
          const SizedBox(
            width: 12.00,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(authorTag, style: const TextStyle(
                  fontSize: 18.00,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'SFProDisplay',
                  shadows: [
                    Shadow(
                      blurRadius: 8.00,  // shadow blur
                      color: Colors.black87, // shadow color
                      offset: Offset(1.0,1.0), // how much shadow will be shown
                    ),
                  ],
                )),
                const SizedBox(
                  height: 4.00
                ),
                Text(authorName, style: const TextStyle(
                  fontSize: 15.00,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontFamily: 'SFProDisplay',
                  shadows: [
                    Shadow(
                      blurRadius: 8.00,  // shadow blur
                      color: Colors.black87, // shadow color
                      offset: Offset(1.0,1.0), // how much shadow will be shown
                    ),
                  ],
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