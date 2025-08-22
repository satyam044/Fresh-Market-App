import 'package:flutter/material.dart';
import 'package:fresh_market_app/models/item_model.dart';
import 'package:fresh_market_app/pages/item_page.dart';
import 'package:fresh_market_app/services/item_service.dart';
import 'package:fresh_market_app/widgets/UIhelper.dart';

class PopularWidget extends StatelessWidget {
  final ItemService itemService = ItemService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ItemModel>>(
      future: itemService.loadItems(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }

        if (!snapshot.hasData || snapshot.hasError) {
          return Text("Failed to load data");
        }

        final popularItems = snapshot.data!.toList();

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
                childAspectRatio: 1,
              ),
              itemCount: popularItems.length,
              itemBuilder: (context, index) {
                final item = popularItems[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ItemPage(item)),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: UIhelper.theme(
                              context,
                            ).scaffoldBackgroundColor,
                          ),
                          child: UIhelper.customImg(
                            img: item.image,
                            height: 150,
                          ),
                        ),
                        UIhelper.customTxt(
                          text: item.name,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontsize: 24,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
