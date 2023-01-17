import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:flutter/gestures.dart';

class Caption extends StatefulWidget {
  final String authorTag, caption;
  const Caption(this.authorTag, this.caption, {super.key});

  @override
  State<Caption> createState() => _CaptionState();
}

class _CaptionState extends State<Caption> {
  bool readMore = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.orange,
        padding: const EdgeInsets.symmetric(vertical: 0.00, horizontal: 12.00),
        child: Row(
          children: <Widget>[
            Text(
                widget.authorTag,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.00,
                  color: Colors.black,
                  fontFamily: 'SFProDisplay',
                  backgroundColor: Colors.blue
                ),
            ),
            Expanded(
              child: Text(
                widget.caption,
                maxLines: 2,
                overflow: TextOverflow.clip,
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 18.00,
                  color: Colors.black,
                  fontFamily: 'SFProDisplay',
                  backgroundColor: Colors.green
                ),
              ),
            ),
            Text(
              "more",
              style: const TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 18.00,
                color: Colors.black38,
                fontFamily: 'SFProDisplay',
                backgroundColor: Colors.yellow
              ),
            )
          ],
        )
        /*
        child: RichText(
            maxLines: readMore ? null : 2,
            //overflow: TextOverflow,
            text: TextSpan(
                children: [
                  TextSpan(
                      text: widget.authorTag,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.00,
                        color: Colors.black,
                        fontFamily: 'SFProDisplay',
                      )
                  ),
                  TextSpan(
                      text: "  ${widget.caption}",
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18.00,
                        color: Colors.black,
                        fontFamily: 'SFProDisplay',
                        backgroundColor: Colors.yellow
                      )
                  ),
                  TextSpan(
                    text: readMore ? " less..." : " more...",
                    style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 18.00,
                      color: Colors.black38,
                      fontFamily: 'SFProDisplay',
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {
                      setState(() {
                        readMore = !readMore;
                      });
                    }
                  ),
                ],
            ),
        ),*/
    );
  }
}
