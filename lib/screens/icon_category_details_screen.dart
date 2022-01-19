import 'package:flutter/material.dart';

import '../models/item_model.dart';
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
              height: 400.0,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    mainAxisExtent: 250.0,
                  ),
                  itemCount: iconCategory.items.length,
                  itemBuilder: (context, index) {
                    final ItemModel item = iconCategory.items[index];

                    return Container(
                      color: Colors.grey.shade200,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 30.0,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.grey.shade500,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              width: double.infinity,
                              height: 110.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    item.image,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 25.0,
                              child: Center(
                                child: Text(
                                  item.title,
                                  textAlign: TextAlign.center,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 25.0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Rp ${item.price}",
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.green.shade600,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 1.0,
                                  ),
                                  const Text(
                                    "/",
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(
                                    width: 1.0,
                                  ),
                                  Text(
                                    "${item.weight} kg",
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 40.0,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: const Text("ADD"),
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xFF1bb880),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(height: 20.0),
            Container(
              width: double.infinity,
              height: 80.0,
              color: Colors.grey.shade200,
              child: const Center(
                child: Text("Belum ada item yang ditambahkan"),
              ),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
