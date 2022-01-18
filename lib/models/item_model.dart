class ItemModel {
  String title;
  double price;
  String image;
  double? weight;

  ItemModel(
      {required this.title,
      required this.price,
      required this.image,
      this.weight});
}
