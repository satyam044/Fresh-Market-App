import 'package:flutter/material.dart';
import 'package:fresh_market_app/widgets/UIhelper.dart';
import 'package:fresh_market_app/widgets/bottom_nav_bar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Hero(
              tag: 'splash-img',
              child: UIhelper.customImg(img: 'splash.png', height: 400),
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                UIhelper.customTxt(
                  text: 'Sign In',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontsize: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      // Name field
                      UIhelper.buildTextField(
                        context,
                        label: "Name",
                        hint: "Enter Username",
                      ),
                      const SizedBox(height: 10),
                      // Password field
                      UIhelper.buildTextField(
                        context,
                        label: "Password",
                        hint: "Enter Password",
                        obscure: true,
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: FilledButton(
                          style: ButtonStyle(
                            padding: WidgetStateProperty.all(
                              const EdgeInsets.symmetric(vertical: 10),
                            ),
                            backgroundColor: WidgetStateProperty.all(
                              UIhelper.theme(context).primaryColor,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomNavBar(),
                              ),
                            );
                          },
                          child: UIhelper.customTxt(
                            text: 'Sign In',
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontsize: 26,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}