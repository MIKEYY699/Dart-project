import 'package:flutter/material.dart';
import 'package:flutter_application_1/FavouriteView.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavouriteView()),
            );
          },
          child: Text("data"),
        ),
      ),
    );
  }
}
