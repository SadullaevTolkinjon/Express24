import 'package:flutter/material.dart';
import 'package:uzexpress/glavniy_page.dart';
import 'package:uzexpress/pages/haqiqiy_zakaz_page.dart';

import 'package:uzexpress/pages/zakaz_page.dart';
import 'package:uzexpress/profile_page.dart';
import 'pages/magazin.dart';

class FirsPage extends StatefulWidget {
  const FirsPage({Key? key}) : super(key: key);

  @override
  _FirsPageState createState() => _FirsPageState();
}

class _FirsPageState extends State<FirsPage> {
  int _currentIndex = 0;

  List _pages = [Glavniy_PAge(), Haqiqiy_Zakaz_page(),Profil_Page()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE5E5E5),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (val) {
          setState(() {
            _currentIndex = val;

          });
        },
        selectedIconTheme:const IconThemeData(color: Colors.yellow),
        items:const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled), label: "главная"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_rounded), label: "Заказы"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
              ),
              label: "Профиль"),
        ],
      ),
    );
  } 
}
