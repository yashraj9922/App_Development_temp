import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Demo Testing App')),
        ),
        body: Center(
          child: Container(
              width: 300,
              height: 300,
              color: Colors.blueGrey,
              child: Center(child: Text(
                'My name is Yashraj Kadam',
                style: TextStyle(
                  color: Colors.limeAccent, 
                  fontSize: 15, 
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.black
              )
            ), 
          ),
        )
      ),
    );
  }
}
