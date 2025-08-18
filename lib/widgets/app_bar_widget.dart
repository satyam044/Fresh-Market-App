import 'package:flutter/material.dart';
import 'package:fresh_market_app/themes/theme_provider.dart';
import 'package:fresh_market_app/widgets/UIhelper.dart';
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
      title: UIhelper.customTxt(
        text: 'Fresh Market',
        color: Colors.black,
        fontWeight: FontWeight.normal,
        fontsize: 24,
      ),
      centerTitle: true,
      actions: [
        GestureDetector(
          onTap: () {
            
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 14),
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(50)),
              ),
              child: const Icon(Icons.person_outline, size: 24),
            ),
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
                children: [
                  Icon(Icons.location_on_outlined, size: 25),
                  SizedBox(width: 5),
                  UIhelper.customTxt(
                    text: 'New York, USA',
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontsize: 20,
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
