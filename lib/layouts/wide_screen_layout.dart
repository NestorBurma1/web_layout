import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_layout/widgets/text_up_button.dart';
import 'package:web_layout/widgets/upside_row_with_circular_avatar.dart';

class WideScreenLayout extends StatefulWidget {
  const WideScreenLayout({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WideScreenLayoutState createState() => _WideScreenLayoutState();
}

class _WideScreenLayoutState extends State<WideScreenLayout> {
  bool buttonUpFlag = false;
  String dropdownValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 3,
            color: const Color(0xFFDAF0FF),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
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
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: const [
                          TextUpButton(text: 'Home'),
                          TextUpButton(text: 'Meet Your Team'),
                          TextUpButton(text: 'Goals'),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: UpSideRowWithCircularAvatar(),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 150.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Hi Sarah',
                      style: TextStyle(fontSize: 30.0),
                    ),
                    Text(
                      'Welcome back! What can we help you with today?',
                      style: TextStyle(fontSize: 15.0),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
