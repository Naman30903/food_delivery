import 'package:flutter/material.dart';
import 'package:food_delivery/Pages/Cart.dart';
import 'package:food_delivery/Pages/Drawer.dart';
import 'package:food_delivery/components/Categories.dart';
import 'package:food_delivery/components/AppBar.dart';
import 'package:food_delivery/Pages/Dishes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const ApBar(),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade700,
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      color: Colors.red,
                    ),
                    SizedBox(
                      height: 50,
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: 'Search', border: InputBorder.none),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.mic,
                      color: Colors.red,
                    )
                  ],
                ),
              ),
            ),
          ),
          // Padding(padding: EdgeInsets.only(top: 20,left: 10),
          // child: ,)
          const CategoriesWidget(),

          const Dishes(),
        ],
      ),
      drawer: const DrawerWidget(),
      floatingActionButton: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade700,
                spreadRadius: 2,
                blurRadius: 10,
                offset: const Offset(0, 3),
              )
            ]),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const CartPage(),
              ),
            );
          },
          backgroundColor: Colors.white,
          child: const Icon(
            Icons.shopping_cart_outlined,
            size: 28,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
