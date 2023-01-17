import 'package:flutter/material.dart';
import 'package:spotlas/components/tag.dart';

class Tags extends StatelessWidget {
  final List<String> tags;
  const Tags(this.tags, {super.key});

  @override
  Widget build(BuildContext context) {
    if (tags.isEmpty) return Container(height: 4.00);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 54.00,
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(12.00, 10.00, 12.00, 8.00),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Tag(tags[index]);
        },
        itemCount: tags.length,
      ),
    );
  }
}
