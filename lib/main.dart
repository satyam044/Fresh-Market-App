import 'package:flutter/material.dart';
import 'package:fresh_market_app/pages/splash_page.dart';
import 'package:fresh_market_app/themes/theme_provider.dart';
import 'package:fresh_market_app/widgets/UIhelper.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: UIhelper.theme(context),
      home: SplashPage(),
    );
  }
}
