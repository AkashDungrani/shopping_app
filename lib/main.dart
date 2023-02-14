import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr_test_1/view/components/cart.dart';
import 'package:pr_test_1/view/components/likes.dart';
import 'package:pr_test_1/view/components/products.dart';
import 'package:pr_test_1/view/screens/details.dart';
import 'package:pr_test_1/view/screens/homepage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (context) => ShoppingApp(),
      "category": (context) => Category_Page(),
      "details": (context) => DetailsPage(),
    },
  ));
}

class ShoppingApp extends StatefulWidget {
  const ShoppingApp({super.key});

  @override
  State<ShoppingApp> createState() => _ShoppingAppState();
}

class _ShoppingAppState extends State<ShoppingApp> {
  int cupertinoindex = 0;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text("E-Commerce App")),
      child: Column(
            children: [
             Spacer(),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  IndexedStack(
                    index: cupertinoindex,
                    children: [
                      Products(),
                      Like(),
                      Cart(),
                    ],
                  ),
                  CupertinoTabBar(
                    currentIndex: cupertinoindex,
                    onTap: (val) {
                      setState(() {
                        cupertinoindex = val;
                      });
                      // tabController.animateTo(val);
                      // pagecontroller.animateToPage(val,
                      //     duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
                    },
                    items: [
                      BottomNavigationBarItem(
                          icon: Icon(CupertinoIcons.home), label: "Products"),
                      BottomNavigationBarItem(
                          icon: Icon(CupertinoIcons.heart), label: "Likes"),
                      BottomNavigationBarItem(
                          icon: Icon(CupertinoIcons.shopping_cart),
                          label: "Cart"),
                    ],
                  ),
                ],
              ),
            ],
          ),
    );
  }
}
