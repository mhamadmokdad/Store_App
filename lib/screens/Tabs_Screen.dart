import 'package:flutter/material.dart';

import '../models/product.dart';
import 'Cart_Screen.dart';
import 'Home_Sceen.dart';

class TabsScreen extends StatefulWidget {
  static const routeName = '/tabs-screen';
  List<Product> Cart = [];
  final Function(String) manageCart;
  TabsScreen({required this.manageCart, required this.Cart});
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedIndex = 0;
  void _selectedTab(int index) {
    setState(() {
      _selectedIndex = index;
      _screens[_selectedIndex];
    });
  }

  late final List<Map<String, Object>> _screens;
  @override
  initState() {
    _screens = [
      {'screen': HomeScreen(), 'title': 'الرئيسية'},
      {'screen': CartScreen(Cart: widget.Cart), 'title': 'السلة'},
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        title: Center(
          child: Text(
            _screens[_selectedIndex]['title'] as String,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,

        onTap: _selectedTab,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'السلة',
          ),
        ],
      ),
      body: _screens[_selectedIndex]['screen'] as Widget,
    );
  }
}
