import 'package:flutter/material.dart';
import 'package:vegetable_market_app/data/data.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

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
                CircleAvatar(
                  radius: 17.0,
                  backgroundColor: Colors.grey.shade300,
                  backgroundImage: const AssetImage("images/user.png"),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notification_add,
                        color: Colors.grey.shade800,
                      ),
                    ),
                    const SizedBox(
                      width: 3.0,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.grey.shade800,
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 25.0,
            ),
            SizedBox(
              height: 95.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: iconCategoryList.map((item) {
                  return Column(
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
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
