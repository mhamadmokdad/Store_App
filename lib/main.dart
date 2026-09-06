import 'package:flutter/material.dart';

import 'models/product.dart';
import 'screens/Cart_Screen.dart';
import 'screens/Product_Screen.dart';
import 'screens/Home_Sceen.dart';
import 'app_data.dart';
import 'screens/Show_Screen.dart';
import 'screens/Tabs_Screen.dart';
import 'widgets/CategoryCard.dart';

void main() {
  runApp(StoreApp());
}

class StoreApp extends StatefulWidget {
  const StoreApp({super.key});

  @override
  State<StoreApp> createState() => _StoreAppState();
}

class _StoreAppState extends State<StoreApp> {
  List<Product> _Cart = [];

  void _manageCart(String productId) {
    final existingIndex = _Cart.indexWhere(
      (product) => product.id == productId,
    );
    if (existingIndex >= 0) {
      setState(() {
        _Cart.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _Cart.add(products.firstWhere((products) => products.id == productId));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
          elevation: 1,
          shadowColor: Colors.black.withOpacity(1),
          title: Center(
            child: Text(
              'متجرنا',
              style: Theme.of(context).appBarTheme.titleTextStyle,
            ),
          ),
        ),
        body: HomeScreen(),
      ),
      initialRoute: TabsScreen.routeName,
      routes: {
        // HomeScreen.routeName: (context) => HomeScreen(),
        ProductScreen.routeName: (context) =>
            ProductScreen(manageCart: _manageCart, Cart: _Cart),
        ShowScreen.routeName: (context) => ShowScreen(),
        CartScreen.routeName: (context) => CartScreen(Cart: _Cart),
        TabsScreen.routeName: (context) =>
            TabsScreen(manageCart: _manageCart, Cart: _Cart),
      },
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          titleTextStyle: TextStyle(
            fontFamily: 'ElMessiri',
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        primarySwatch: Colors.blue,
        secondaryHeaderColor: Colors.white,
        textTheme: TextTheme(
          headlineMedium: TextStyle(
            color: Colors.black,
            fontFamily: 'ElMessiri',
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          headlineSmall: TextStyle(
            color: Colors.black,
            fontFamily: 'ElMessiri',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: TextStyle(
            color: Colors.white,
            fontFamily: 'ElMessiri',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
