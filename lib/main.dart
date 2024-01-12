import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_start_project/models/album.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_start_project/features/home/screens/HomeScreen.dart';

import 'constants/global_variables.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: GlobalVariables.appName,
      debugShowCheckedModeBanner: false,

      // backgroundColor: Colors.deepPurple,

      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: const ColorScheme.light(
          primary: Color.fromARGB(247, 206, 206, 206),
          secondary: Color.fromARGB(255, 211, 211, 211),
        ),
        appBarTheme: const AppBarTheme(
          elevation: 8.0,
          iconTheme: IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
          backgroundColor: Color.fromARGB(247, 247, 247, 255),
          titleTextStyle: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color.fromARGB(247, 247, 247, 255),
          selectedItemColor: Color.fromARGB(255, 19, 185, 94),
          unselectedItemColor: Color.fromARGB(255, 94, 94, 94),
          selectedLabelStyle: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
