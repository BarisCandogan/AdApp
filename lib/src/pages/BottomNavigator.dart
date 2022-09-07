import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project/src/pages/Bazaar.dart';
import 'package:project/src/pages/BillBoard.dart';

class navigation extends StatelessWidget {
  const navigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myBottomNavigationBar(),
    );
  }
}

class myBottomNavigationBar extends StatefulWidget {
  const myBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<myBottomNavigationBar> createState() => _myBottomNavigationBarState();
}

class _myBottomNavigationBarState extends State<myBottomNavigationBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [homeDesign(), Billboard()];
  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.account_circle,
                color: Colors.white,
                size: 24.0,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.grey,
                size: 24.0,
              )),
        ],
        backgroundColor: Color(0xff6101EE),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTappedBar,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: "Bazaar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ad_units_outlined),
            label: "Billboard",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: "User Page",
          )
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Color(0xff6101EE),
      ),
    );
  }
}
