import 'package:doddy_rn/screens/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doddy Rizal N',
      theme: ThemeData(
        primaryColor: Color(0xFFFDFFFC),
        accentColor: Color(0xFF212529),
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme
        )
      ),
      home: MyHomePage(),
    );
  }
}
