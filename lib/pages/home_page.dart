import 'package:flutter/material.dart';
import 'package:fresh_market_app/widgets/app_bar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + 40),
        child: AppBarWidget(),
      ),
      body: const Center(child: Text("Home Page Content")),
    );
  }
}
