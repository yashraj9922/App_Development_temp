import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Demo Testing App')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              child: Image.asset('assets/images/abc.jpg'),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    color: Colors.blueGrey,
                    child: const Center(
                      child: Text(
                        'Yashraj Kadam',
                        style: TextStyle(
                          color: Colors.limeAccent,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          backgroundColor: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    child: Text('Click here'),
                    onPressed: () {
                      print('Text Button Clicked');
                    },
                    onLongPress: () {
                      print('Longpressed done');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
