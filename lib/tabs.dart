import 'package:flutter/material.dart';

import 'account.dart';
import 'cart.dart';
import 'home.dart';

class tabscreen extends StatefulWidget {
  // const tabscreen({Key? key}) : super(key: key);


  @override
  _tabscreenState createState() => _tabscreenState();
}

class _tabscreenState extends State<tabscreen> {
  int _currentindex=0;
  List _pages=[
    homescreen(),
    //cartscreen(),
    accountscreen(),
  ];
  _changeindex(selectedindex)
  {
    setState(() {
      _currentindex=selectedindex;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentindex],
      bottomNavigationBar:BottomNavigationBar(
        onTap: _changeindex,
        currentIndex: _currentindex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "home"),
         // BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label: "cart"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box_outlined),label: "account"),
        ],
      ),
    );
  }
}
