import 'package:flutter/material.dart';
import 'bdy.dart';

void main() => runApp(const Demo02());

class Demo02 extends StatelessWidget {
  const Demo02({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Text('Demo02'),
      home: buildBody(),
    );
  }
}
