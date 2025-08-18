import 'package:flutter/material.dart';
import 'package:fresh_market_app/widgets/UIhelper.dart';

class PopularWidget extends StatelessWidget {
  const PopularWidget({super.key});

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
        const SizedBox(height: 4),
      ],
    );
  }
}
