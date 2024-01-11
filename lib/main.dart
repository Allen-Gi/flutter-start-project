import 'package:flutter/material.dart';
import 'package:flutter_start_project/features/home/screens/HomeScreen.dart';

import 'constants/global_variables.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: GlobalVariables.appName,
        debugShowCheckedModeBanner: false,

        // backgroundColor: Colors.deepPurple,

        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen());
  }
}
