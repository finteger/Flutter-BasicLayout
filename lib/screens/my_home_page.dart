// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, duplicate_ignore

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;

  final List<String> entries = <String>['A', 'B'];
  final List<int> colorCodes = <int>[600, 500];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          FlutterLogo(),
          Text('Flutter Dev'),
          Icon(Icons.notifications_none),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Close'),
                    ),
                  ],
                  title: const Text('Flutter Map'),
                  contentPadding: const EdgeInsets.all(20.0),
                  content: const Text('This is the Alert Dialog'),
                ),
              );
            },
            child: const Text('Show Alert!'),
          ),
        ]),
        backgroundColor: Colors.blue,
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: AssetImage('assets/rdplogo.png'),
              ),
              Container(
                height: 400,
                width: 300,
                child: ListView.separated(
                  padding: const EdgeInsets.all(8),
                  itemCount: entries.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 150,
                      color: Colors.amber[colorCodes[index]],
                      child: Center(child: Text('Entry ${entries[index]}')),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                ),
              ),
              ElevatedButton(
                child: Text('Go to second page.'),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return Container(
                        child: Page2(data: "Welcome to the second page!"),
                      );
                    }),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(),
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
            BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(Icons.home),
              label: ("Home"),
              activeIcon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: ("Account"),
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
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key, required this.data});
  final String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(data),
      ),
    );
  }
}
