import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextUpButton extends StatefulWidget {

  final String text;

  const TextUpButton({Key key, this.text}) : super(key: key);
  @override
  _State createState() => _State();
}

class _State extends State<TextUpButton> {

  bool buttonUpFlag = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onExit: (PointerEvent details) {
        setState(() {
          buttonUpFlag = false;
        });
      },
      onEnter: (PointerEvent details) {
        setState(() {
          buttonUpFlag = true;
        });
      },
      child: Container(
        height: 100,
        width: 120,
        child: Column(
          children: [
            Text(widget.text,
                style: buttonUpFlag
                    ? GoogleFonts.ubuntu()
                    : GoogleFonts.ubuntu().fontWeight),
            Visibility(
              visible: buttonUpFlag,
              child: Divider(
                color: Colors.red,
                height: 2.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
