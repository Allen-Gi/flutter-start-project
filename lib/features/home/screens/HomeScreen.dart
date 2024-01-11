import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var _selectedIndex = 0;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return SafeArea(
      child: Scaffold(
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
        body: const Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text('주요 뉴스',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Row(
              //center row contents horizontally,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.home_outlined,
                ),
                SizedBox(width: 10),
                Center(
                  child: Text('Home Screen', style: TextStyle(fontSize: 30)),
                ),
              ],
            ),
            Expanded(
              child: Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text('주요 뉴스',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                      SizedBox(height: 1200),
                      Row(
                        //center row contents horizontally,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.home_outlined),
                          SizedBox(width: 10),
                          Center(
                            child: Text('Home Screen',
                                style: TextStyle(fontSize: 30)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
