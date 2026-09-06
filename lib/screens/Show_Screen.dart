import 'package:flutter/material.dart';

import '../app_data.dart';
import '../widgets/Show_Card.dart';

class ShowScreen extends StatelessWidget {
  const ShowScreen({super.key});
  static const routeName = '/showScreen';

  @override
  Widget build(BuildContext context) {
    final routeArgument =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    String Id = routeArgument!['Id'] as String;
    final ShowProducts = products
        .where((product) => product.categoryId == Id)
        .toList();
    return Scaffold(
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
      body: Expanded(
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ShowCard(
                    id: ShowProducts[index].id,
                    name: ShowProducts[index].name,
                    image: ShowProducts[index].image,
                    price: ShowProducts[index].price,
                  ),
                  SizedBox(height: 10),
                  Divider(),
                ],
              ),
            );
          },
          itemCount: products
              .where((product) => product.categoryId == Id)
              .length,
        ),
      ),
    );
  }
}
