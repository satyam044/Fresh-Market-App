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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back, size: 34),
                  ),
                ],
              ),
              UIhelper.customImg(img: item.image),
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
                    text: "\₹${item.price.toString()}",
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
                    color: Colors.black,
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
            ],
          ),
        ),
      ),
      bottomSheet: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: UIhelper.customTxt(
                  text: 'Add To Cart',
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontsize: 20,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: UIhelper.customTxt(
                  text: 'Buy Now',
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontsize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
