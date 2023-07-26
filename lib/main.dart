import 'package:bookly/views/SplashView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(



      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith( scaffoldBackgroundColor:  KPrimaryColor,
      textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),

      ),


      home: const SplashView(),

    );
  }
}
