import 'package:flutter/material.dart';
import 'package:spotlas/components/feed_item/components/tag.dart';

class Tags extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(12.00, 4.00, 12.00, 6.00),
      child: Row(
        children: [
          Tag("Outdoors"),
          Tag("Cheap"),
          Tag("Live Music")
        ],
      )
    );
  }
}
