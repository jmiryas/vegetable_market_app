import 'package:flutter/material.dart';

import '../data/data.dart';
import '../screens/icon_category_details_screen.dart';

class ShopIconCategoryWidget extends StatelessWidget {
  const ShopIconCategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: iconCategoryList.map((item) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      IconCategoryDetailsScreen(iconCategory: item),
                ),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 65.0,
                  height: 65.0,
                  padding: const EdgeInsets.all(15.0),
                  margin: const EdgeInsets.only(right: 20.0),
                  child: Image(
                    image: AssetImage(item.image),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  child: SizedBox(
                    width: 65.0,
                    height: 20.0,
                    child: Center(
                      child: Text(
                        item.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
