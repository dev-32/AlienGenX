
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
      (value)=>
    runApp(MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Ben10 Aliens Generator"
              , style: GoogleFonts.openSans(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),),
            backgroundColor: Colors.black,
            centerTitle: true,
          ),
          body: MainScreen()),
    ),
  ));
}