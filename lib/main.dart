import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:krash_app/pages/homePage.dart';
import 'package:krash_app/pages/loginPage.dart';
import 'package:krash_app/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.montserrat().fontFamily,
        primaryTextTheme: GoogleFonts.montserratTextTheme(),
      ),
      routes: {
        "/": (context) => loginPage(),//default route to work on
        MyRoute.loginRoute: (context) => loginPage(),
        MyRoute.homeRoute: (context)=> homePage(namea:loginPage.name),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}














MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  final swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}
