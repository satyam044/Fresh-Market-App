import 'package:flutter/material.dart';
import 'package:fresh_market_app/widgets/UIhelper.dart';

class CategoriesWidget extends StatelessWidget {
  CategoriesWidget({super.key});

  var groceryItems = [
    {"img": "banner.jpg", "txt": "Fruits"},
    {"img": "banner.jpg", "txt": "Fruits"},
    {"img": "banner.jpg", "txt": "Fruits"},
    {"img": "banner.jpg", "txt": "Fruits"},
    {"img": "banner.jpg", "txt": "Fruits"},
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
        Row(
          children: [
            Column(
              children: [
                UIhelper.customImg(
                  img: 'banner.jpg',
                  height: 80,
                  width: 80,
                  fit: BoxFit.contain,
                ),
                UIhelper.customTxt(
                  text: 'Fruits',
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontsize: 18,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
