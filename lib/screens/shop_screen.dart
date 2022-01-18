import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../data/data.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  int _currentDiscountIndex = 0;

  List<Widget> buildDiscountDots(int currentIndex) {
    List<Widget> discountDots = [];

    for (int i = 0; i < discountList.length; i++) {
      discountDots.add(CircleAvatar(
        backgroundColor:
            currentIndex == i ? const Color(0xFF1bb880) : Colors.grey.shade300,
        radius: 4.0,
      ));

      discountDots.add(const SizedBox(
        width: 5.0,
      ));
    }

    return discountDots;
  }

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
            const SizedBox(
              height: 25.0,
            ),
            SizedBox(
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: discountList.asMap().entries.map((item) {
                  return VisibilityDetector(
                      key: Key(item.key.toString()),
                      child: Container(
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
                            image: AssetImage(item.value.background),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Image(
                                width: 100.0,
                                height: 100.0,
                                image: AssetImage(item.value.image),
                              ),
                            ),
                            const SizedBox(
                              width: 15.0,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item.value.title,
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.orange.shade600,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    item.value.discount,
                                    style: TextStyle(
                                      fontSize: 55.0,
                                      color: Colors.orange.shade600,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    item.value.description,
                                    style: TextStyle(
                                      color: Colors.green.shade600,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      onVisibilityChanged: (VisibilityInfo info) {
                        if (info.visibleFraction == 1) {
                          setState(() {
                            _currentDiscountIndex = item.key;
                          });
                        }
                      });
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            SizedBox(
              width: double.infinity,
              height: 15.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: buildDiscountDots(_currentDiscountIndex),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: saladList.asMap().entries.map((item) {
                  return Card(
                    child: SizedBox(
                      width: 160.0,
                      height: 200.0,
                      child: Column(
                        children: [
                          Container(
                            width: 160.0,
                            height: 110.0,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    item.value.image,
                                  ),
                                )),
                          ),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          item.value.title,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text("Rp ${item.value.price}"),
                                      ],
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 18.0,
                                    backgroundColor: const Color(0xFF1bb880),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.arrow_forward_ios,
                                        size: 18.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
