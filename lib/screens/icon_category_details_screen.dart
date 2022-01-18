import 'package:flutter/material.dart';

import '../models/icon_category_model.dart';

class IconCategoryDetailsScreen extends StatelessWidget {
  final IconCategoryModel iconCategory;
  const IconCategoryDetailsScreen({
    Key? key,
    required this.iconCategory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                Text(
                  iconCategory.name,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.grey.shade800,
                      ),
                    ),
                    const SizedBox(
                      width: 3.0,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.tune,
                        color: Colors.grey.shade800,
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              height: 600.0,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    mainAxisExtent: 250.0,
                  ),
                  itemCount: iconCategory.items.length,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.grey.shade200,
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
