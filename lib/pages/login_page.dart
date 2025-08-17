import 'package:flutter/material.dart';
import 'package:fresh_market_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

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
              child: Image.asset('assets/images/splash.png', height: 400),
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                Text(
                  'Sign In',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      // Name field
                      _buildTextField(
                        context,
                        label: "Name",
                        hint: "Enter Username",
                      ),
                      const SizedBox(height: 10),
                      // Password field
                      _buildTextField(
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
                              Provider.of<ThemeProvider>(context).themeData.primaryColor,
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                            ),
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

  Widget _buildTextField(BuildContext context,
      {required String label, required String hint, bool obscure = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w400)),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Provider.of<ThemeProvider>(context).themeData.primaryColor),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            obscureText: obscure,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              border: InputBorder.none,
              hintText: hint,
              hintStyle: const TextStyle(
                color: Color.fromARGB(192, 104, 94, 94),
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
