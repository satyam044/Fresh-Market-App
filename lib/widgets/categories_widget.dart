import 'package:flutter/material.dart';
import 'package:fresh_market_app/themes/theme_provider.dart';
import 'package:fresh_market_app/widgets/UIhelper.dart';
import 'package:provider/provider.dart';

class CategoriesWidget extends StatelessWidget {
  CategoriesWidget({super.key});

  final groceryItems = [
    {"img": "vegges.png", "text": "Fruits"},
    {"img": "banner.jpg", "text": "Vegetables"},
    {"img": "banner.jpg", "text": "Meat"},
    {"img": "banner.jpg", "text": "Bakery"},
    {"img": "banner.jpg", "text": "Dairy"},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UIhelper.customTxt(
          text: 'Categories',
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontsize: 24,
        ),
        const SizedBox(height: 4),
        SizedBox(
          height: 140,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: groceryItems.length,
            itemBuilder: (context, index) {
              final item = groceryItems[index];
              return Padding(
                padding: const EdgeInsets.only(right: 18),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Provider.of<ThemeProvider>(context).themeData.scaffoldBackgroundColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: UIhelper.customImg(
                          img: item['img']!,
                          height: 60,
                          width: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    UIhelper.customTxt(
                      text: item['text']!,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontsize: 16,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
