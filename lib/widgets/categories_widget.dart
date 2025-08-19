import 'package:flutter/material.dart';
import 'package:fresh_market_app/widgets/UIhelper.dart';

class CategoriesWidget extends StatelessWidget {
  CategoriesWidget({super.key});

  final groceryItems = [
    {"img": "fruits.png", "text": "Fruits"},
    {"img": "veggies.png", "text": "Veggies"},
    {"img": "meat.png", "text": "Meat"},
    {"img": "bakery.png", "text": "Bakery"},
    {"img": "dairy.png", "text": "Dairy"},
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
                        color: UIhelper.theme(context).scaffoldBackgroundColor,
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
