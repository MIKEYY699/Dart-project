import 'package:flutter/material.dart';

class Shareview extends StatelessWidget {
  const Shareview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ShareView')),
      backgroundColor: Colors.blue,
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
