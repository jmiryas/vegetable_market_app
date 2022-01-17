import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import '../screens/shop_screen.dart';
import '../screens/bookmark_screen.dart';
import '../screens/checkout_screen.dart';
import '../screens/favorite_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: const [
            ShopScreen(),
            FavoriteScreen(),
            CheckoutScreen(),
            BookmarkScreen(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          _currentIndex = index;
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.ease,
          );
        }),
        items: [
          BottomNavyBarItem(
            icon: const Icon(Icons.home),
            title: const Text("Shop"),
            activeColor: Colors.green,
            inactiveColor: Colors.blueGrey.shade300,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.favorite),
            title: const Text("Favorite"),
            activeColor: Colors.green,
            inactiveColor: Colors.blueGrey.shade300,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.shop),
            title: const Text("Checkout"),
            activeColor: Colors.green,
            inactiveColor: Colors.blueGrey.shade300,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.bookmark),
            title: const Text("Bookmark"),
            activeColor: Colors.green,
            inactiveColor: Colors.blueGrey.shade300,
          ),
        ],
      ),
    );
  }
}
