import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_royal_player/screens/contact.dart';
import 'package:the_royal_player/screens/game_screen.dart';
import 'package:the_royal_player/screens/ptofile_screen.dart';
import 'package:the_royal_player/screens/resullts_screen.dart';
import 'package:the_royal_player/screens/shop_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex = 2;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  final List<Widget> _pages = [
    Contact(),
    ShopScreen(),
    GameScreen(),
    ResultScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: Colors.deepPurple.shade100,
        elevation: 0,
        selectedFontSize: 18.0,
        selectedLabelStyle: GoogleFonts.comicNeue(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
        currentIndex: _selectIndex,
        onTap: _navigateBottomBar,
        selectedItemColor: Colors.red,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.contact_support_outlined,
              size: 28,
            ),
            label: 'Support',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesome.shopping_bag,
              size: 28,
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesome.amazon,
              size: 28,
            ),
            label: 'Play Game',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assignment_outlined,
              size: 28,
            ),
            label: 'Result',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
              size: 28,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
