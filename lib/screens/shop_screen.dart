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
              height: 65.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: iconCategoryList.map((item) {
                  return Container(
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
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            SizedBox(
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: discountList.map((item) {
                  return Container(
                    width: 300.0,
                    height: 200.0,
                    padding: const EdgeInsets.all(20.0),
                    margin: const EdgeInsets.only(right: 20.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5),
                          BlendMode.dstIn,
                        ),
                        image: AssetImage(item.background),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Image(
                            width: 100.0,
                            height: 100.0,
                            image: AssetImage(item.image),
                          ),
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.title,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.orange.shade600,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                item.discount,
                                style: TextStyle(
                                  fontSize: 55.0,
                                  color: Colors.orange.shade600,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                item.description,
                                style: TextStyle(
                                  color: Colors.green.shade600,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
