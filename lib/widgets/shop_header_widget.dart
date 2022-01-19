import 'package:flutter/material.dart';

class ShopHeaderWidget extends StatelessWidget {
  const ShopHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
