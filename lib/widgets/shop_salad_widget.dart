import 'package:flutter/material.dart';

import '../data/data.dart';

class ShopSaladWidget extends StatelessWidget {
  const ShopSaladWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
