import 'package:vegetable_market_app/models/item_model.dart';

import '../models/discount_model.dart';
import '../models/icon_category_model.dart';

List<IconCategoryModel> iconCategoryList = [
  IconCategoryModel(
    name: "Fruit",
    image: "images/orange.png",
    items: [
      ItemModel(
        title: "Acerola",
        price: 5000,
        image: "images/fruit_01.png",
        weight: 0.5,
      ),
      ItemModel(
        title: "Apple",
        price: 8000,
        image: "images/fruit_02.jpeg",
        weight: 0.8,
      ),
      ItemModel(
        title: "Apricots",
        price: 7000,
        image: "images/fruit_03.jpg",
        weight: 1.0,
      ),
      ItemModel(
        title: "Avocado",
        price: 7000,
        image: "images/fruit_04.jpg",
        weight: 0.6,
      ),
    ],
  ),
  IconCategoryModel(
    name: "Greens",
    image: "images/broccoli.png",
    items: [
      ItemModel(
        title: "Carrot",
        price: 7000,
        image: "images/greens_01.jpg",
        weight: 0.6,
      ),
      ItemModel(
        title: "Cabbage",
        price: 7000,
        image: "images/greens_02.jpg",
        weight: 0.6,
      ),
      ItemModel(
        title: "Broccoli",
        price: 7000,
        image: "images/greens_03.jpg",
        weight: 0.6,
      ),
      ItemModel(
        title: "Lettuce",
        price: 7000,
        image: "images/greens_04.jpg",
        weight: 0.6,
      ),
    ],
  ),
  IconCategoryModel(
    name: "Staples",
    image: "images/potato.png",
    items: [],
  ),
  IconCategoryModel(
    name: "Fungi",
    image: "images/mushroom.png",
    items: [],
  ),
  IconCategoryModel(
    name: "Pepper",
    image: "images/bell-pepper.png",
    items: [],
  ),
];

List<DiscountModel> discountList = [
  DiscountModel(
    title: "Discount",
    discount: "50%",
    description: "Get discount until 31 June 2020",
    image: "images/10-percent.png",
    background: "images/bg1.jpg",
  ),
  DiscountModel(
    title: "Discount",
    discount: "30%",
    description: "Get discount until 23 June 2020",
    image: "images/coupon.png",
    background: "images/bg2.jpg",
  ),
  DiscountModel(
    title: "Discount",
    discount: "20%",
    description: "Get discount until 31 August 2020",
    image: "images/discounts.png",
    background: "images/bg3.jpg",
  ),
  DiscountModel(
    title: "Discount",
    discount: "50%",
    description: "Get discount until 17 June 2020",
    image: "images/gift.png",
    background: "images/bg4.jpg",
  ),
];

List<ItemModel> saladList = [
  ItemModel(
    title: "Caesar Salad",
    price: 30000,
    image: "images/caesar-salad.jpg",
  ),
  ItemModel(
    title: "Fattoush",
    price: 340000,
    image: "images/fattoush.jpg",
  ),
  ItemModel(
    title: "Greek Salad",
    price: 35000,
    image: "images/greek-salad.jpeg",
  ),
  ItemModel(
    title: "Leafy Green Salad",
    price: 24000,
    image: "images/leafy-green-salad.jpg",
  ),
  ItemModel(
    title: "Nicoise Salad",
    price: 27000,
    image: "images/nicoise-salad.jpg",
  ),
  ItemModel(
    title: "Tuna Salad",
    price: 31000,
    image: "images/tuna-salad.jpg",
  ),
];
