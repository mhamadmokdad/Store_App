import 'package:flutter/material.dart';

import '../app_data.dart';
import '../screens/Product_Screen.dart';

class ShowCard extends StatelessWidget {
  final String id;
  final String name;
  final String image;
  final double price;
  ShowCard({required id, required name, required image, required price})
    : this.id = id,
      this.name = name,
      this.image = image,
      this.price = price;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.shopping_cart),
      title: Text(name, style: Theme.of(context).textTheme.headlineSmall),
      subtitle: Text(
        '$price',
        style: Theme.of(
          context,
        ).textTheme.headlineSmall?.copyWith(fontSize: 16, color: Colors.grey),
      ),
      trailing: Image.asset(image, width: 50, height: 50, fit: BoxFit.cover),
      onTap: () {
        Navigator.pushNamed(
          context,
          ProductScreen.routeName,
          arguments: {'id': id, 'title': name},
        );
      },
    );
  }
}
