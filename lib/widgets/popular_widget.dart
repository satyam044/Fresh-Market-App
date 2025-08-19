import 'package:flutter/material.dart';
import 'package:fresh_market_app/widgets/UIhelper.dart';

class PopularWidget extends StatelessWidget {
  PopularWidget({super.key});

  final popularItems = [
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
          text: 'Popular',
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontsize: 24,
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: popularItems.length,
          itemBuilder: (context, index) {
            final item = popularItems[index];
            return Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: UIhelper.theme(context).scaffoldBackgroundColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: UIhelper.customImg(
                      img: item['img']!,
                      height: 150,
                      width: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                UIhelper.customTxt(
                  text: item['text']!,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontsize: 24,
                ),
              ],
            );
          },
        ),
        const SizedBox(height: 4),
      ],
    );
  }
}
