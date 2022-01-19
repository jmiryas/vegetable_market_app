import 'package:flutter/material.dart';

import '../widgets/shop_salad_widget.dart';
import '../widgets/shop_header_widget.dart';
import '../widgets/shop_discount_widget.dart';
import '../widgets/shop_icon_category_widget.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: const [
            ShopHeaderWidget(),
            SizedBox(
              height: 25.0,
            ),
            ShopIconCategoryWidget(),
            SizedBox(
              height: 25.0,
            ),
            ShopDiscountWidget(),
            SizedBox(
              height: 20.0,
            ),
            ShopSaladWidget(),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
