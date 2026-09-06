import 'package:flutter/material.dart';

import '../app_data.dart';
import '../models/categories.dart';
import '../models/product.dart' show Product;
import '../widgets/CategoryCard.dart';
import 'Cart_Screen.dart';

class ProductScreen extends StatelessWidget {
  static const routeName = '/productScreen';
  final Function(String) manageCart;
  final List<Product> Cart;
  ProductScreen({required this.manageCart, required this.Cart});
  Widget buildText(String text, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        textAlign: TextAlign.right,
        text,
        style: Theme.of(
          context,
        ).textTheme.headlineSmall?.copyWith(fontSize: 18, color: Colors.black),
      ),
    );
  }

  Widget buildTextWithOutline(String text, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        textAlign: TextAlign.right,
        text,
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.lineThrough,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final routeArgument =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    String id = routeArgument?['id'] as String;
    String name = routeArgument?['title'] as String;
    List ProductShow = products.where((product) => product.id == id).toList();
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(name, style: TextStyle(color: Colors.white)),
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        shadowColor: Theme.of(context).appBarTheme.shadowColor,
      ),

      body: ListView.builder(
        itemCount: ProductShow.length,
        itemBuilder: (ctx, index) {
          return Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: [
                  Container(
                    constraints: BoxConstraints(maxHeight: 450),
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      ProductShow[index].image,
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 5),
                  Center(child: buildText(ProductShow[index].name, context)),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      SizedBox(width: 10),
                      Icon(Icons.star, color: Colors.amber),
                      SizedBox(width: 5),
                      buildText('${ProductShow[index].rating}', context),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      SizedBox(width: 10),
                      Icon(Icons.money, color: Colors.green),
                      SizedBox(width: 5),
                      buildText('${ProductShow[index].price}', context),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      SizedBox(width: 10),
                      Icon(Icons.money_outlined, color: Colors.green),
                      SizedBox(width: 5),
                      buildTextWithOutline(
                        '${ProductShow[index].oldPrice}',
                        context,
                      ),
                    ],
                  ),
                  buildText(
                    'الالوان: ${ProductShow[index].colors.join(', ')}',
                    context,
                  ),

                  buildText(
                    ' ${ProductShow[index].sizes.join(', ')} :السعة',
                    context,
                  ),

                  buildText(':الوصف', context),

                  buildText(' ${ProductShow[index].description}:', context),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10.0),
        child: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          onPressed: () {
            Cart.add(ProductShow.where((product) => product.id == id).first);
          },
          child: Icon(Icons.add_shopping_cart, color: Colors.white),
        ),
      ),
    );
  }
}
