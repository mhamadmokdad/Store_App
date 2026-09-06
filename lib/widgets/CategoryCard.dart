import 'package:flutter/material.dart';
import 'package:store_app/screens/Show_Screen.dart';

import '../app_data.dart';
import '../models/categories.dart';
import '../screens/Product_Screen.dart';

class CategoryCard extends StatelessWidget {
  final String Id;
  final String name;
  final String image;
  CategoryCard(Categories category)
    : Id = category.id,
      name = category.name,
      image = category.image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              // Handle category card tap

              Navigator.pushNamed(
                context,
                ShowScreen.routeName,
                arguments: {'Id': Id,"title":name},
              );
            },

            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            constraints: BoxConstraints(maxWidth: 100),

            child: Text(
              name,
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontSize: 19),
            ),
          ),

          SizedBox(height: 5),
        ],
      ),
    );
  }
}
