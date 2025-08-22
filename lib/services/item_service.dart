import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:fresh_market_app/models/item_model.dart';

class ItemService {
  Future<List<ItemModel>> loadItems() async {
    final String response = await rootBundle.loadString(
      'assets/data/data.json',
    );
    final List<dynamic> data = json.decode(response);
    return data.map((json) => ItemModel.fromJson(json)).toList();
  }
}
