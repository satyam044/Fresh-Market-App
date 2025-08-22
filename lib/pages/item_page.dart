import 'package:flutter/material.dart';
import 'package:fresh_market_app/models/item_model.dart';
import 'package:fresh_market_app/themes/themes.dart';
import 'package:fresh_market_app/widgets/UIhelper.dart';

class ItemPage extends StatelessWidget {
  final ItemModel item;
  ItemPage(this.item);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 40,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back, size: 34),
                        ),
                        Icon(Icons.favorite_outline, size: 34),
                      ],
                    ),
                    UIhelper.customImg(
                      img: item.image,
                      height: 400,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          UIhelper.customTxt(
                            text: item.name,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontsize: 40,
                          ),
                          UIhelper.customTxt(
                            text: item.category,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontsize: 24,
                          ),
                        ],
                      ),
                      UIhelper.customTxt(
                        text: "\₹${item.price.ceilToDouble().toString()}",
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontsize: 24,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UIhelper.customTxt(
                        text: "Description",
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontsize: 24,
                      ),
                      UIhelper.customTxt(
                        text: item.description,
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontsize: 24,
                      ),
                    ],
                  ),
                  SizedBox(height: 80),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: BottomAppBar(
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart_outlined, size: 32),
            ),
            ElevatedButton(
              onPressed: () {},
              child: UIhelper.customTxt(
                text: 'Buy Now',
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontsize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
