import 'package:vegetable_market_app/models/item_model.dart';

class IconCategoryModel {
  String name;
  String image;
  List<ItemModel> items;

  IconCategoryModel({
    required this.name,
    required this.image,
    required this.items,
  });
}
