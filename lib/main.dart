import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const new({super.key});

  // new comment

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(backgroundColor: Colors.limeAccent));
  }
}
