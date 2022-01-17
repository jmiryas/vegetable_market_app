import '../models/discount_model.dart';
import '../models/icon_category_model.dart';

List<IconCategoryModel> iconCategoryList = [
  IconCategoryModel(name: "Fruit", image: "images/orange.png"),
  IconCategoryModel(name: "Greens", image: "images/broccoli.png"),
  IconCategoryModel(name: "Staples", image: "images/potato.png"),
  IconCategoryModel(name: "Fungi", image: "images/mushroom.png"),
  IconCategoryModel(name: "Pepper", image: "images/bell-pepper.png"),
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
