import 'package:flutter/material.dart';

void main() {
  runApp(demo03());
}

class demo03 extends StatelessWidget {
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('Scaffold Widget')),),
      ),
    );
  }
}
