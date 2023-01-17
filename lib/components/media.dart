import 'package:flutter/material.dart';

class Media extends StatelessWidget {
  final List<String> media;
  const Media(this.media, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 514.00,
      color: Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(0.00),
            child: Row(
              children: <Widget>[
                Image.network(media[index]),
              ],
            ),
          );
        },
        itemCount: media.length,
      ),
    );
  }
}
