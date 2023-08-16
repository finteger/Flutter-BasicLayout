// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlutterLogo(),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 0.01),
                child: Text('My First Flutter App',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    )),
              ),
              Icon(Icons.phone),
              Icon(Icons.notifications_none),
            ],
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.red,
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(0.8, 1),
                  colors: <Color>[
                Color(0xff1f005c),
                Color(0xff5b0060),
                Color(0xff870160),
                Color(0xffac255e),
                Color(0xffca485c),
                Color(0xffe16b5c),
                Color(0xfff39060),
                Color(0xffffb56b),
              ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      child: Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Flag_of_Bosnia_and_Herzegovina.svg/1920px-Flag_of_Bosnia_and_Herzegovina.svg.png',
                        height: 50,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      child: Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Flag_of_Bosnia_and_Herzegovina.svg/1920px-Flag_of_Bosnia_and_Herzegovina.svg.png',
                        height: 50,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      child: Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Flag_of_Bosnia_and_Herzegovina.svg/1920px-Flag_of_Bosnia_and_Herzegovina.svg.png',
                        height: 50,
                      ),
                    ),
                  ),
                ],
              ),
              Text('Basic Layout Example',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                  )),
              Image(
                image: AssetImage("assets/rdplogo.png"),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomAppBar(
          child: BottomNavigationBar(
            elevation: 50,
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.green,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            currentIndex: selectedIndex,
            items: [
              //the first one is always activated
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: ("Home"),
                activeIcon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: ("Person"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: ("Settings"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.accessible_sharp),
                label: ("Accessibility"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
