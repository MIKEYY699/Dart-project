import 'package:flutter/material.dart';
import 'package:flutter_application_1/ShareView.dart';

class FavouriteView extends StatefulWidget {
  const new({super.key});

  @override
  State<FavouriteView> createState() => _FavouriteViewState();
}

class _FavouriteViewState extends State<FavouriteView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Favourite Screen')),
      backgroundColor: Colors.cyanAccent,
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Shareview()),
                );
              },
              child: Text('pushReplace'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('pop'),
            ),
          ],
        ),
      ),
    );
  }
}
