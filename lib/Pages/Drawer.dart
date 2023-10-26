import 'package:flutter/material.dart';
import 'package:food_delivery/Pages/Login_page.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey.shade100,
      child: Padding(
        padding: const EdgeInsets.only(top: 50, left: 40, bottom: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/Desginer.jpg'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Foodie Fleet',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Column(
              children: <Widget>[
                NewRow(
                  text: 'Cart',
                  icon: Icons.shopping_cart,
                ),
                SizedBox(
                  height: 20,
                ),
                NewRow(
                  text: 'Profile',
                  icon: Icons.person_outline,
                ),
                SizedBox(
                  height: 20,
                ),
                NewRow(
                  text: 'My Order',
                  icon: Icons.shopping_bag_outlined,
                ),
                SizedBox(
                  height: 20,
                ),
                NewRow(
                  text: 'Favorites',
                  icon: Icons.favorite_border,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.cancel,
                  color: Colors.white.withOpacity(0.5),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Log out',
                    style: TextStyle(color: Colors.white.withOpacity(0.5)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class NewRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const NewRow({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.white,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
