import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            iconSize: 30,
            selectedItemColor: Color(0xff5f4bfc),
            selectedLabelStyle:
                TextStyle(fontFamily: 'SF Pro Display', fontSize: 12.5),
            unselectedLabelStyle:
                TextStyle(fontFamily: 'SF Pro Display', fontSize: 12.5),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.store_mall_directory_outlined),
                label: "Order",
                activeIcon: Icon(Icons.store_mall_directory_rounded),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.food_bank_outlined),
                  label: "Find stores",
                  activeIcon: Icon(Icons.food_bank_rounded)),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            }),
      ),
    );
  }
}
