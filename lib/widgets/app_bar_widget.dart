import 'package:flutter/material.dart';
import 'package:fresh_market_app/widgets/UIhelper.dart';

class StickyAppBarWidget extends StatelessWidget {
  const StickyAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      snap: true,
      backgroundColor: UIhelper.theme(context).scaffoldBackgroundColor,
      leading: const Icon(Icons.menu, size: 30, color: Colors.black),
      centerTitle: true,
      title: UIhelper.customTxt(
        text: 'Fresh Market',
        color: Colors.black,
        fontWeight: FontWeight.normal,
        fontsize: 24,
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              backgroundColor: Colors.white70,
              child: Icon(Icons.person, color: Colors.black),
            ),
          ),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  size: 25,
                  color: Colors.black,
                ),
                const SizedBox(width: 5),
                UIhelper.customTxt(
                  text: 'New York, USA',
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontsize: 20,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width - 30,
              padding: const EdgeInsets.symmetric(horizontal: 14),
              decoration: BoxDecoration(
                color: const Color.fromARGB(133, 200, 105, 71),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const TextField(
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
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
