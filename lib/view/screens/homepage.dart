import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pr_test_1/models/globals.dart';

class Category_Page extends StatefulWidget {
  const Category_Page({super.key});

  @override
  State<Category_Page> createState() => _Category_PageState();
}

class _Category_PageState extends State<Category_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Category")),
      body: Container(
        child: Column(
          children: [
            ...category
                .map((e) => GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, e["page"]);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(5),
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: Colors.blueGrey)),
                        child: Text(
                          e["name"],
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey),
                        ),
                      ),
                    ))
                .toList(),
          ],
        ),
      ),
    );
  }
}
