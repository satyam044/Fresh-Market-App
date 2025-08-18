import 'package:flutter/material.dart';
import 'package:fresh_market_app/pages/login_page.dart';
import 'package:fresh_market_app/widgets/UIhelper.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(_fadeRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UIhelper.customTxt(
              text: 'Fresh-Market',
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontsize: 40,
            ),
            Hero(
              tag: 'splash-img',
              child: UIhelper.customImg(img: 'splash.png'),
            ),
            SizedBox(height: 50),
            UIhelper.customTxt(
              text: 'Grocery at your',
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontsize: 30,
            ),
            UIhelper.customTxt(
              text: 'Doorstep',
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontsize: 24,
            ),
          ],
        ),
      ),
    );
  }
}

Route _fadeRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => LoginPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    },
    transitionDuration: Duration(milliseconds: 800),
  );
}
