import 'package:flutter/material.dart';
import 'package:flutter_start_project/constants/global_variables.dart';
import 'package:flutter_start_project/features/home/screens/MessageItem.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(GlobalVariables.appName),
          actions: [
            IconButton(
              icon: const Icon(Icons.search_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.add_circle_outline_rounded),
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Scrollbar(
            child: ListView(
              children: const [
                MessageItem(name: '小明', content: '你好', date: '2021-09-01'),
                MessageItem(name: '小明2', content: '你好', date: '2021-09-02'),
                MessageItem(name: '小明3', content: '你好', date: '2021-09-01'),
                MessageItem(name: '小明4', content: '你好', date: '2021-09-01'),
                MessageItem(name: '小明', content: '你好', date: '2021-09-01'),
                MessageItem(name: '小明', content: '你好', date: '2021-09-01'),
                MessageItem(name: '小明', content: '你好', date: '2021-09-01'),
                MessageItem(name: '小明', content: '你好', date: '2021-09-01'),
                MessageItem(name: '小明', content: '你好', date: '2021-09-01'),
                MessageItem(name: '小明', content: '你好', date: '2021-09-01'),
                MessageItem(name: '小明', content: '你好', date: '2021-09-01'),
                MessageItem(name: '小明', content: '你好', date: '2021-09-01'),
                MessageItem(name: '小明', content: '你好', date: '2021-09-01'),
                MessageItem(name: '小明', content: '你好', date: '2021-09-01'),
                MessageItem(name: '小明', content: '你好', date: '2021-09-01'),
                MessageItem(name: '小明', content: '你好', date: '2021-09-01'),
                MessageItem(name: '小明', content: '你好', date: '2021-09-01'),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 30.0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: '微信',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group_outlined),
              label: "通讯录",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_city_outlined),
              label: '发现',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded),
              label: '我',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
