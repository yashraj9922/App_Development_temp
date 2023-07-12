import 'package:flutter/material.dart';

void main(){
  runApp(const Demo05());
}

class Demo05 extends StatelessWidget {
  const Demo05({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(
        title: const Text("My name is Yashraj Kadam"),
      ),
      body: const Center(
        child: Text("Yashraj Kadam"),
      ),
      ),
    );
  }
}
