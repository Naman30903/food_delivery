import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Pages/Drawer.dart';

class ApBar extends StatefulWidget {
  const ApBar({super.key});

  @override
  State<ApBar> createState() => _ApBarState();
}

class _ApBarState extends State<ApBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const DrawerWidget(),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade500,
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    )
                  ]),
              child: const Icon(CupertinoIcons.bars),
            ),
          ),
          const Text(
            'Foodie Fleet',
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade500,
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    )
                  ]),
              child: const Icon(Icons.notifications),
            ),
          )
        ],
      ),
    );
  }
}
