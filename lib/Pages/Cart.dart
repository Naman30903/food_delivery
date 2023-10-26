import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_delivery/Pages/ItemPage.dart';
import 'package:food_delivery/components/AppBar.dart';
import 'package:food_delivery/components/Bottom.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ApBar(),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 20,
                            left: 10,
                            bottom: 10,
                          ),
                          child: Text(
                            "Order List",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsetsDirectional.symmetric(
                                vertical: 5),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const ItemPage()),
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
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        const SizedBox(
                                          height: 13,
                                        ),
                                        const Text(
                                          "Whopper",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        RatingBar.builder(
                                            initialRating: 4,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            itemCount: 5,
                                            itemSize: 18,
                                            itemPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 4),
                                            itemBuilder: (context, _) =>
                                                const Icon(
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
                                                FontFeature
                                                    .stylisticAlternates()
                                              ],
                                              color: Colors.red,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 16),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
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
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )),
                      ])))
        ],
      ),
      bottomNavigationBar: const ItemBottomNavBar(),
    );
  }
}
