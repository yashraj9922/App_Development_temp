import 'package:flutter/material.dart';

void main() {
  runApp(const Demo03());
}

class Demo03 extends StatelessWidget {
  const Demo03({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Center(child: Text('Scaffold Widget')),),
      ),
    );
  }
}
