import 'package:flutter/material.dart';
import 'package:fresh_market_app/widgets/app_bar_widget.dart';
import 'package:fresh_market_app/widgets/banner_widget.dart';
import 'package:fresh_market_app/widgets/categories_widget.dart';
import 'package:fresh_market_app/widgets/popular_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          StickyAppBarWidget(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  BannerWidget(),
                  SizedBox(height: 10),
                  CategoriesWidget(),
                  SizedBox(height: 10),
                  PopularWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
