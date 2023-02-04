import 'package:eshop/views/buyers/nav_screens/Store_Screen.dart';
import 'package:eshop/views/buyers/nav_screens/acount_Screen.dart';
import 'package:eshop/views/buyers/nav_screens/cart_Screens.dart';
import 'package:eshop/views/buyers/nav_screens/category_Screen.dart';
import 'package:eshop/views/buyers/nav_screens/home_screens.dart';
import 'package:eshop/views/buyers/nav_screens/searchScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  int _pageIndex = 0;
  List<Widget> _pages = [
    HomeScreen(),
    CategoryScreen(),
    StoreScreen(),
    CartScreen(),
    SerachScreen(),
    AcountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: (value) {
          setState(() {
            _pageIndex = value;
          });
        },
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.yellow.shade900,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined), label: "CATEGORIES"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shop_2_outlined), label: "STORE"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.shopping_cart), label: "CART"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search), label: "SEARCH"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person_circle), label: "ACOUNT")
        ],
      ),
      body: _pages[_pageIndex],
    );
  }
}
