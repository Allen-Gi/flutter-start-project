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
  late Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: GlobalVariables.appName,
        debugShowCheckedModeBanner: false,

        // backgroundColor: Colors.deepPurple,

        theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 58, 183, 137),
          colorScheme: const ColorScheme.light(
            primary: Color.fromARGB(255, 219, 147, 15),
            secondary: Colors.deepPurple,
          ),
          appBarTheme: const AppBarTheme(
            elevation: 8.0,
            iconTheme: IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
            backgroundColor: Color.fromARGB(255, 253, 87, 228),
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Color.fromARGB(255, 253, 87, 228),
            selectedItemColor: Color.fromARGB(255, 124, 145, 239),
            unselectedItemColor: Color.fromARGB(255, 255, 255, 255),
          ),
          primarySwatch: Colors.deepPurple,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Center(
                child: Text(
              'Home',
              // title color
              style: TextStyle(color: Colors.white),
            )),
            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.home_outlined),
                onPressed: () {},
              ),
            ],
          ),
          body: Center(
              child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    Text(snapshot.data!.title),
                    const SizedBox(height: 10),
                    Text(snapshot.data!.id.toString()),
                    const SizedBox(height: 10),
                    Text(snapshot.data!.userId.toString()),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          )),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            currentIndex: 0,
            selectedItemColor: Colors.amber[800],
            onTap: (index) {},
          ),
        ));
  }
}

Future<Album> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception('Failed to load album');
  }
}
