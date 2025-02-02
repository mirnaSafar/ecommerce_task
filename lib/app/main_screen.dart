import '../features/products/presentation/pages/add_product.dart';
import 'package:flutter/material.dart';

import '../features/products/presentation/pages/home.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  var pageController = PageController(initialPage: 0);

  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add Product'),
  ];

  List<Widget> pages = [
    HomePage(),
    AddProductPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashFactory: NoSplash.splashFactory,
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
            pageController.animateToPage(_selectedIndex,
                duration: Duration(milliseconds: 300), curve: Curves.linear);
          },
          items: items,
          selectedItemColor: Colors.blueGrey,
        ),
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        children: pages,
      ),
    );
  }
}
