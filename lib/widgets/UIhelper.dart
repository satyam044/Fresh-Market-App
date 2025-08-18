import 'package:flutter/material.dart';

class UIhelper {
  static customImg({required String img}) {
    return Image.asset('assets/images/$img');
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
