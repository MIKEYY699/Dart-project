import 'package:flutter/material.dart';

class Shareview extends StatefulWidget {
  const new({super.key});

  @override
  State<Shareview> createState() => _ShareviewState();
}

class _ShareviewState extends State<Shareview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ShareView')),
      backgroundColor: Colors.red,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.popUntil(context, (route) => route.isFirst);
          },
          child: Text('popUntill'),
        ),
      ),
    );
  }
}
