import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/globals.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> akash =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(title: Text(akash["Name"])),
      body: Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Column(children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Image.asset(akash["image"]),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  akash["Name"],
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Text(
                  " Rs. ${akash["Price"]}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.center,
            height: 50,
            width: 200,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              "Description",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            akash["des"],
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 40,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            OutlinedButton(
                onPressed: () {
                  setState(() {
                    Globals.likes.add(akash);
                  });
                },
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.heart_fill,
                      color:
                          (akash["like"]) ? Colors.red : Colors.grey.shade300,
                    ),
                    Text("Wish List")
                  ],
                )),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    sum = sum + int.parse(akash["Price"]);
                  });
                  Globals.cart.add(akash);
                },
                child: Text("Add To Cart")),
          ]),
        ]),
      ),
    );
  }
}
