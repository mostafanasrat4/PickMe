import 'package:flutter/material.dart';

import 'rider/available_rides.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // Bottom navigation bar
  int _currentIndex = 0;

  void onTabTapped(int index) {
    if (index == 1) Navigator.pushNamed(context, '/add_ride');
    if (index == 2) Navigator.pushNamed(context, '/rides_history');
    //if (index == 3) Navigator.pushNamed(context, '/login');

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const AvailableRidesPage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.search), label: "Find Ride"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box), label: "Add Ride"),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt), label: "History"),

        ],
      ),
    );
  }
}
