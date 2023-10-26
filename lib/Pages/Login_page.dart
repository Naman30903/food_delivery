import 'package:food_delivery/Homepage.dart';
import 'package:food_delivery/components/My_button.dart';
import 'package:food_delivery/components/TextField.dart';
import 'package:food_delivery/components/square_tile.dart';
import 'package:food_delivery/main.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
          child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const SizedBox(height: 50),
          Image.asset(
            'assets/images/Desginer.jpg',
            height: 200,
            width: double.infinity,
          ),
          const SizedBox(height: 50),
          Text(
            'Welcome back you\'ve been missed!',
            style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
          ),
          const SizedBox(height: 25),
          MyTextField(
            controller: usernameController,
            hintText: 'UserName',
            obscureText: false,
          ),
          const SizedBox(height: 10),
          MyTextField(
            controller: passwordController,
            hintText: 'Password',
            obscureText: true,
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.grey.shade600),
                )
              ],
            ),
          ),
          const SizedBox(height: 25),
          MyButton(onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          }),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(children: [
              Expanded(
                child: Divider(
                  thickness: 0.5,
                  color: Colors.grey.shade400,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Or continue with',
                    style: TextStyle(color: Colors.grey.shade700),
                  )),
              Expanded(
                child: Divider(
                  thickness: 0.5,
                  color: Colors.grey.shade400,
                ),
              )
            ]),
          ),
          const SizedBox(
            height: 50,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [SquareTile(imagePath: 'assets/images/google.png')],
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Not a member?',
                style: TextStyle(color: Colors.grey.shade700),
              ),
              const SizedBox(
                width: 4,
              ),
              const Text(
                'Register now',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              )
            ],
          )
        ]),
      )),
    );
  }
}
