// ignore_for_file: file_names, camel_case_types, must_be_immutable
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:krash_app/constants/color.dart';

class homePage extends StatelessWidget {
  late String namea;
  homePage({
    Key? key,
    required this.namea,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: leadBlue,
      appBar: AppBar(
        title: RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
              text: "Hi $namea 👋",
              style: const TextStyle(color: Colors.black, fontSize: 18),
              children: const <TextSpan>[
                TextSpan(
                    text: '\nNice to see you',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ]),
        ),

        /* Image.asset(
          "assets/images/lightThemeLogo.png",
          fit: BoxFit.contain,
          height: 30, 
        ),*/
        titleTextStyle: GoogleFonts.montserrat(),
        backgroundColor: leadBlue,
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        //height: 60,
        child: Container(
          height: 55,
          width: 320,
          //color: Colors.white,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(15),
                top: Radius.elliptical(30,30),
                
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.white,
                    blurRadius: 0.0,
                    spreadRadius: -1.0,
                    offset: Offset(2.0, 2.0))
              ]),
          child: const Icon(
            Icons.search,
            size: 20,
          ),
          alignment: Alignment.centerRight,
          padding: EdgeInsets.all(16),
        ),
      ),
      endDrawer: const Drawer(
        
      ),
    );
  }
}
