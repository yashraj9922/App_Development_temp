import 'package:flutter/material.dart';

void main() {
  runApp(const demo04());
}

// ignore: camel_case_types
class demo04 extends StatelessWidget {
  const demo04({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(" Scaffold class/Widget"),
          backgroundColor: const Color.fromARGB(255, 51, 116, 73),
          shape: const BorderDirectional(
              bottom: BorderSide(
                  color: Color.fromARGB(255, 25, 50, 16),
                  width: 1)), //BorderDirectional is a class
        ),
        body: const Center(child: Text("Named Arguments in Scaffold Widget")),
        backgroundColor: const Color.fromARGB(255, 255, 254, 214),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color.fromARGB(255, 51, 116, 73),
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          mouseCursor: SystemMouseCursors.click,
          backgroundColor: const Color.fromARGB(255, 51, 116, 73),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: "Business",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: "School",
            ),
          ],
          selectedItemColor: Colors.amber,
          onTap: (int index) {},
        ),
        drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 255, 254, 214),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 51, 116, 73),
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.message),
                title: const Text('Messages'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.account_circle),
                title: const Text('Profile'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        bottomSheet: Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(
            child: Text('Bottom Sheet'),
          ),
        ),
      ),
    );
  }
}
