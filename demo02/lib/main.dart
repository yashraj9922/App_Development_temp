import 'package:flutter/material.dart';
import 'bdy.dart';

void main() => runApp(Demo02());

class Demo02 extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Text('Demo02'),
      home: buildBody(),
    );
  }
}
