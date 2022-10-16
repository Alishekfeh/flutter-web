import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'const.dart';
import 'main_screen/main_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'web Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBgColor,
        canvasColor: kBgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(bodyColor: Colors.white).copyWith(
          bodyText1:const  TextStyle(color: kBodyTextColor),
          bodyText2:const  TextStyle(color: kBodyTextColor),
        )
      ),
      home: const MainSection(),
    );
  }
}

