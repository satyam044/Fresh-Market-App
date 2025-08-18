import 'package:flutter/material.dart';
import 'package:fresh_market_app/widgets/UIhelper.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ClipRRect(
        child: UIhelper.customImg(img: 'banner.jpg'),
        borderRadius: BorderRadiusGeometry.all(Radius.circular(15)),
      ),
    );
  }
}
