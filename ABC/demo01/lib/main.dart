import 'package:flutter/material.dart';

// void main() {
//   runApp(DemoApp1());
// }

void main() => runApp(const DemoApp1());

class DemoApp1 extends StatelessWidget {
  const DemoApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Text('Hello!'),
    );
  }
}
