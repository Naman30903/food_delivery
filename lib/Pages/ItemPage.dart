import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery/components/AppBar.dart';
import 'package:clippy_flutter/arc.dart';
import 'package:food_delivery/components/Bottom.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: ListView(
          children: [
            const ApBar(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset(
                'assets/images/Whopper.png',
                height: 300,
                // width: double.infinity,
                width: 300,
              ),
            ),
            Arc(
                edge: Edge.TOP,
                arcType: ArcType.CONVEY,
                height: 5,
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
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
                            const Text(
                              'Rs 320',
                              style: TextStyle(
                                  fontFeatures: [
                                    FontFeature.stylisticAlternates()
                                  ],
                                  color: Colors.red,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                          // bottom: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Whopper",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 28),
                            ),
                            Container(
                              width: 90,
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.shade500,
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                      offset: const Offset(0, 3),
                                    )
                                  ]),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.minus,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Text('1',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                  Icon(
                                    FontAwesomeIcons.plus,
                                    color: Colors.white,
                                    size: 20,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Text(
                          'Introducing our mouthwatering signature burger! Crafted with the finest, hand-selected Angus beef, this culinary masterpiece is flame-grilled to perfection, producing a succulent patty thats bursting with flavor. Nestled between a fresh, lightly toasted brioche bun, its adorned with a medley of crisp, locally-sourced vegetables and a tantalizing secret sauce thatll leave your taste buds dancing. Savor the epitome of burger bliss with every delectable bite. Unleash your cravings and savor the extraordinary  bite into our unforgettable burger today!',
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Delivery Time',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(
                              width: 150,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Icon(FontAwesomeIcons.clock),
                            ),
                            Text(
                              '30 minutes',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
      bottomNavigationBar: const ItemBottomNavBar(),
    );
  }
}
