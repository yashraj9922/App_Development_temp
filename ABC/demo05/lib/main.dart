import 'package:flutter/material.dart';

void main(){
  runApp(Demo05());
}

class Demo05 extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(
        title: const Text("My name is Yashraj Kadam"),
      ),
      body: Center(
        child: Text("Yashraj Kadam"),
      ),
      ),
    );
  }
}
