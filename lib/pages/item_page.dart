import 'package:flutter/material.dart';
import 'package:fresh_market_app/models/item_model.dart';

class ItemPage extends StatelessWidget {
  final ItemModel item;
  ItemPage(this.item);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Item')));
  }
}
