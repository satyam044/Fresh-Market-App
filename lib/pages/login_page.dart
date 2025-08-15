import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: 'splash-img',
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/splash.png', height: 100),
              SizedBox(height: 20),
              Text("LOGINPAGE", style: TextStyle(fontSize: 24)),
            ],
          ),
        ),
      ),
    );
  }
}
