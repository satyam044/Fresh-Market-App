import 'package:flutter/material.dart';
import 'package:fresh_market_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: const Icon(Icons.menu, size: 30),
        backgroundColor: Provider.of<ThemeProvider>(context).themeData.scaffoldBackgroundColor,
        title: const Text("Fresh Market"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(50)),
              ),
              child: const Icon(Icons.person_outline, size: 30),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40), 
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.location_on_outlined, size: 25),
                SizedBox(width: 5),
                Text(
                  'New York, USA',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
      );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 40);
}
