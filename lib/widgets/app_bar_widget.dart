import 'package:flutter/material.dart';
import 'package:fresh_market_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.menu, size: 30),
      backgroundColor: Provider.of<ThemeProvider>(
        context,
      ).themeData.scaffoldBackgroundColor,
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
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            children: [
              Row(
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
              SizedBox(height: 10),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 30,
                    padding: EdgeInsets.only(left: 14, right: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(133, 200, 105, 71),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search Your Grocery",
                        hintStyle: TextStyle(
                          color: Color.fromARGB(192, 255, 255, 255),
                          fontSize: 20,
                        ),
                        suffixIcon: Icon(
                          Icons.search,
                          size: 30,
                          color: Color.fromARGB(192, 255, 255, 255),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 100);
}
