import 'package:flutter/material.dart';

import '../app_data.dart';
import '../models/product.dart';

class CartScreen extends StatefulWidget {
  static const routeName = '/cart-screen';
  late List<Product> Cart = [];

  CartScreen({required this.Cart});
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    // final routeArgument =
    //     ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    // final String id = routeArgument?['id'] as String;
    // List<Product> ProductShow = products
    //     .where((product) => product.id == id)
    //     .toList();
    return ListView.builder(
      itemBuilder: (ctx, index) {
        return Card(
          child: ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: Text(widget.Cart[index].name),
            subtitle: Text(widget.Cart[index].description),
            trailing: InkWell(
              child: const Icon(Icons.delete),
              onTap: () {
                setState(() {
                  widget.Cart.removeAt(index);
                });
              },
            ),
          ),
        );
      },
      itemCount: widget.Cart.length,
    );
  }
}
