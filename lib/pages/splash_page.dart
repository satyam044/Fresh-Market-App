import 'package:flutter/material.dart';
import 'package:fresh_market_app/pages/login_page.dart';

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
            Text('Fresh-Market', style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold
            ),),
            Hero(
              tag: 'splash-img',
              child: Image.asset('assets/images/splash.png'),
            ),
            SizedBox(height: 50,),
            Text('Grocery at your', style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),
            Text('Doorstep', style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),),
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
