import 'package:flutter/material.dart';
import 'package:cmritapp/firstscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: firstscreen(),
    );
  }
}
