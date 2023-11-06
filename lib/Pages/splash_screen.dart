import 'package:flutter/material.dart';
import 'Login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final int splashDuration = 3;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: splashDuration), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => LoginPage(
                onTap: () {},
              )));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: FadeInImage.assetNetwork(
          placeholder: 'assets/images/Desginer.jpg',
          image: 'https://your-food_delivery-app.com/logo.jpg',
          fadeInDuration: Duration(seconds: splashDuration),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
