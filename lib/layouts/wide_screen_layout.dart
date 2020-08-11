import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_layout/widgets/text_up_button.dart';

class WideScreenLayout extends StatefulWidget {
  WideScreenLayout({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WideScreenLayoutState createState() => _WideScreenLayoutState();
}

class _WideScreenLayoutState extends State<WideScreenLayout> {
  bool buttonUpFlag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 3,
            color: Color(0xFFDAF0FF),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Image.asset('images/logo_wide_screen.jpg'),
                          Text(
                            'WINGSPAN',
                            style: GoogleFonts.notoSans(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          TextUpButton(text: 'Home'),
                          TextUpButton(text: 'Meet Your Team'),
                          TextUpButton(text: 'Goals'),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      child: Row(
                        children: [
                          CircleAvatar(
                              child: Image.asset('images/users_photo/2.jpg')),
                          Text('Sarah Andersen')
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
