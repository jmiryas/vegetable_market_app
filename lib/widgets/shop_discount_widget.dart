import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../data/data.dart';

class ShopDiscountWidget extends StatefulWidget {
  const ShopDiscountWidget({Key? key}) : super(key: key);

  @override
  State<ShopDiscountWidget> createState() => _ShopDiscountWidgetState();
}

class _ShopDiscountWidgetState extends State<ShopDiscountWidget> {
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
    return Column(
      children: [
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
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
        )
      ],
    );
  }
}
