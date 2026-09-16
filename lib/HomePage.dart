import 'package:flutter/material.dart';
import 'package:flutter_application_1/FavouriteView.dart';
import 'package:flutter_application_1/ShareView.dart';
import 'package:flutter_application_1/homeView.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final screens = [HomeView(), FavouriteView(), Shareview()];
  var currentScreenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      body: screens[currentScreenIndex],

      //
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.blue,

        selectedFontSize: 0,

        elevation: 30,
        backgroundColor: Colors.white,
        currentIndex: currentScreenIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Fav'),
          BottomNavigationBarItem(icon: Icon(Icons.share), label: 'Share'),
        ],
        onTap: (index) {
          setState(() {
            currentScreenIndex = index;
          });
        },
      ),
    );
  }
}
