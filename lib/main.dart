import 'package:dig_news/pages/Continue.dart';
import 'package:dig_news/pages/Get_Started.dart';
import 'package:dig_news/pages/Intro.dart';
import 'package:dig_news/pages/Phone.dart';
import 'package:dig_news/pages/Reset.dart';
import 'package:dig_news/pages/Sign_Up.dart';
import 'package:dig_news/pages/Splash.dart';
import 'package:dig_news/pages/Welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Splash(),
      routes: {
        Welcome.id:(context)=>Welcome(),
      Intro_Page.id:(context)=>Intro_Page(),
        Sign_Up.id:(context)=>Sign_Up(),
      }
    );
  }
}


