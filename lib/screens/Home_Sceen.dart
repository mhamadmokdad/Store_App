import 'package:flutter/material.dart';

import '../models/categories.dart';
import '../widgets/CategoryCard.dart';
import '../app_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SizedBox(height: 0.5),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 230,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(14, 8, 43, 1),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              Positioned(
                bottom: 0,
                top: 20,
                left: 20,
                child: Text(
                  "Samsung",
                  style: Theme.of(
                    context,
                  ).textTheme.headlineSmall?.copyWith(color: Colors.white),
                ),
              ),
              Positioned(
                bottom: 0,
                top: 52,
                left: 25,
                child: Text(
                  "Galaxy S24 Ultra",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                top: 110,
                left: 25,
                child: Text(
                  "قوة الاداء بيدك",
                  style: TextStyle(
                    fontFamily: 'Amiri',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                bottom: 20,

                left: 26,

                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "تسوق الان",
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -60,
                top: 0,
                right: -170,
                child: Image.asset(
                  'assets/images/s24.png',
                  width: 500,
                  height: 700,
                  scale: 0.1,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 10),
              Text(
                "الاقسام  ",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.deepPurple[900],
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Scrollbar(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2 / 1.8,
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return CategoryCard(
                    Categories(
                      id: categories[index].id,
                      name: categories[index].name,
                      image: categories[index].image,
                    ),
                  );
                },
              ),
            ),
          ),
        ),

        SizedBox(height: 20),
      ],
    );
  }
}

//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
