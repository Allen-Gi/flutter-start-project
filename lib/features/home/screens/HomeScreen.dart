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
    // 상태 바와 네비게이션 바의 색상을 설정합니다.
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.blue, // 상태 바 색상
      systemNavigationBarColor: Colors.blue, // 네비게이션 바 색상
    ));

    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Center(
                child: Text(
              'Home',
              // title color
              style: TextStyle(color: Colors.white),
            )),
            leading: IconButton(
              icon: const Icon(Icons.menu),
              color: Colors.white,
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.home_outlined),
                color: Colors.white,
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
                  Icon(Icons.home_outlined, color: Colors.white),
                  SizedBox(width: 10),
                  Center(
                    child: Text('Home Screen', style: TextStyle(fontSize: 30)),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
