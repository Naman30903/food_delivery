import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_delivery/Pages/ItemPage.dart';

class Platter {
  final String title;
  final String description;
  final double price;
  final String imageUrl;

  Platter(this.title, this.description, this.price, this.imageUrl);
}

class Food {
  final List<Platter> platters = [
    Platter(
      "Whopper",
      "description",
      300,
      "assets/images/Whopper.png",
    ),
    Platter(
      "Pizza",
      "description",
      450,
      "assets/images/pizza.png",
    ),
    Platter(
      "Cheese Sandwich",
      "description",
      120,
      "assets/images/Cheese.png",
    ),
    Platter(
      "Noodle",
      "description",
      180,
      "assets/images/noodle.png",
    ),
    Platter(
      "Pasta",
      "description",
      200,
      "assets/images/pasta.png",
    ),
    Platter(
      "Cold Drink",
      "description",
      300,
      "assets/images/colddrink.png",
    ),
  ];
}

class Dishes extends StatefulWidget {
  const Dishes({super.key});

  @override
  State<Dishes> createState() => _DishesState();
}

class _DishesState extends State<Dishes> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 5,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 7,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ItemPage()),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/images/Whopper.png',
                            height: 150,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                        height: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const SizedBox(
                            height: 13,
                          ),
                          const Text(
                            "Whopper",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 18,
                              itemPadding:
                              const EdgeInsets.symmetric(horizontal: 4),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.red,
                              ),
                              onRatingUpdate: (index) {}),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Rs. 160',
                            style: TextStyle(
                                fontFeatures: [
                                  FontFeature.stylisticAlternates()
                                ],
                                color: Colors.red,
                                fontWeight: FontWeight.normal,
                                fontSize: 16),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                                Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 7,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/images/pizza.png',
                            height: 75,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                        height: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Pizza",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 18,
                              itemPadding:
                              const EdgeInsets.symmetric(horizontal: 4),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.red,
                              ),
                              onRatingUpdate: (index) {}),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Rs. 320',
                            style: TextStyle(
                                fontFeatures: [
                                  FontFeature.stylisticAlternates()
                                ],
                                color: Colors.red,
                                fontWeight: FontWeight.normal,
                                fontSize: 16),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                                Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 7,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/images/pasta.png',
                            height: 75,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                        height: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const SizedBox(
                            height: 13,
                          ),
                          const Text(
                            "Pasta",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 18,
                              itemPadding:
                              const EdgeInsets.symmetric(horizontal: 4),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.red,
                              ),
                              onRatingUpdate: (index) {}),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Rs. 200',
                            style: TextStyle(
                                fontFeatures: [
                                  FontFeature.stylisticAlternates()
                                ],
                                color: Colors.red,
                                fontWeight: FontWeight.normal,
                                fontSize: 16),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                                Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 7,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/images/cheese.png',
                            height: 75,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                        height: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const SizedBox(
                            height: 13,
                          ),
                          const Text(
                            "Cheese Sandwich",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 18,
                              itemPadding:
                              const EdgeInsets.symmetric(horizontal: 4),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.red,
                              ),
                              onRatingUpdate: (index) {}),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Rs. 170',
                            style: TextStyle(
                                fontFeatures: [
                                  FontFeature.stylisticAlternates()
                                ],
                                color: Colors.red,
                                fontWeight: FontWeight.normal,
                                fontSize: 16),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                                Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 7,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/images/colddrink.png',
                            height: 75,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                        height: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const SizedBox(
                            height: 13,
                          ),
                          const Text(
                            "Cold Drink",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 18,
                              itemPadding:
                              const EdgeInsets.symmetric(horizontal: 4),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.red,
                              ),
                              onRatingUpdate: (index) {}),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Rs. 70',
                            style: TextStyle(
                                fontFeatures: [
                                  FontFeature.stylisticAlternates()
                                ],
                                color: Colors.red,
                                fontWeight: FontWeight.normal,
                                fontSize: 16),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                                Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





















































// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:food_delivery/Pages/ItemPage.dart';
//
// class Platter {
//   final String title;
//   final String description;
//   final double price;
//   final String imageUrl;
//
//   Platter(this.title, this.description, this.price, this.imageUrl);
// }
//
// class Food {}
//
// class Dishes extends StatefulWidget {
//   const Dishes({super.key});
//
//   @override
//   State<Dishes> createState() => _DishesState();
// }
//
// class _DishesState extends State<Dishes> {
//   final List<Platter> platters = [
//     Platter(
//       "Whopper",
//       "description",
//       300,
//       "assets/images/Whopper.png",
//     ),
//     Platter(
//       "Pizza",
//       "description",
//       450,
//       "assets/images/pizza.png",
//     ),
//     Platter(
//       "Cheese Sandwich",
//       "description",
//       120,
//       "assets/images/Cheese.png",
//     ),
//     Platter(
//       "Noodle",
//       "description",
//       180,
//       "assets/images/noodle.png",
//     ),
//     Platter(
//       "Pasta",
//       "description",
//       200,
//       "assets/images/pasta.png",
//     ),
//     Platter(
//       "Cold Drink",
//       "description",
//       300,
//       "assets/images/colddrink.png",
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         itemCount: platters.length,
//         itemBuilder: (context, index) {
//           final platter = platters[index];
//           return GestureDetector(
//             onTap: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => const ItemPage(),
//                 ),
//               );
//             },
//             child: Card(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10.0),
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.symmetric(
//                         vertical: 20, horizontal: 20),
//                     child: Image.asset(
//                       platter.imageUrl,
//                       height: 100,
//                       width: 100,
//                     ),
//                   ),
//                   Text(
//                     platter.title,
//                     style: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   Text(
//                     'Price: \$${platter.price.toStringAsFixed(2)}',
//                     style: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.green,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         });
//   }
// }
