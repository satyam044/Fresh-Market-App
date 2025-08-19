import 'package:flutter/material.dart';
import 'package:fresh_market_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class UIhelper {
  static customImg({
    required String img,
    double? height,
    double? width,
    BoxFit? fit,
  }) {
    return Image.asset(
      'assets/images/$img',
      height: height,
      width: width,
      fit: fit,
    );
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

  static ThemeData theme(BuildContext context) {
    return Provider.of<ThemeProvider>(context).themeData;
  }

  static Widget buildTextField(
    BuildContext context, {
    required String label,
    required String hint,
    bool obscure = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UIhelper.customTxt(
          text: label,
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontsize: 24,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: UIhelper.theme(context).primaryColor),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            obscureText: obscure,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              border: InputBorder.none,
              hintText: hint,
              hintStyle: const TextStyle(
                color: Color.fromARGB(192, 104, 94, 94),
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
