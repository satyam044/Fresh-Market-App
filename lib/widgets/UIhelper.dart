import 'package:flutter/material.dart';

class UIhelper {
  static customImg({required String img, double? height, double? width, BoxFit? fit}) {
    return Image.asset('assets/images/$img', height: height, width: width, fit: fit,);
  }

  static customTxt({
    required String text,
    required Color color,
    required FontWeight fontWeight,
    required double fontsize,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontsize,
      ),
    );
  }
}
