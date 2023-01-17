import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class Caption extends StatefulWidget {
  final String authorTag, caption;
  const Caption(this.authorTag, this.caption, {super.key});

  @override
  State<Caption> createState() => _CaptionState();
}

class _CaptionState extends State<Caption> {
  bool readMore = false;
  late int authorTagLength;
  late int captionLength = 0;

  @override
  void initState() {
    authorTagLength = widget.authorTag.length;
    captionLength = 88 - authorTagLength;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 0.00, horizontal: 12.00),
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
                      text: readMore ? "  ${widget.caption}" : "  ${widget.caption.characters.take(captionLength)}",
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18.00,
                        color: Colors.black,
                        fontFamily: 'SFProDisplay',
                      )
                  ),
                  widget.caption.length > captionLength ?
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
                  ) : const TextSpan(text: ""),
                ],
            ),
        ),
    );
  }
}
