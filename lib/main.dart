import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_layout/widgets/text_up_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('images/logo_wide_screen.jpg'),
            Text(
              'WINGSPAN',
              style: GoogleFonts.notoSans(),
            ),
          ],
        ),
        Align(alignment: Alignment.topCenter,
          child: Row(
            children: [
              TextUpButton(text: 'Home'),
              TextUpButton(text:'Meet Your Team'),
              TextUpButton(text:'Goals'),
            ],
          ),
        )
      ],
    ));
  }
}
