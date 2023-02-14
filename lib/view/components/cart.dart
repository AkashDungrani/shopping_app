import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/globals.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int n = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      alignment: Alignment.center,
      child: Column(children: [
        SizedBox(height: 100,),
        ...Globals.cart
              .map((e) => Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            Container(
                                height: 100,
                                width: 100,
                                child: Image.asset(e["image"])),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  e["Name"],
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    backgroundColor: Colors.white,
                                    decoration: TextDecoration.none
                                  ),
                                ),
                                Text(
                                  "RS.${e["Price"]}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
                                      decoration: TextDecoration.none),
                                )
                              ],
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (e["qun"] > 1) {
                                    e["qun"]--;
                                  }
                                });
                              },
                              child: Container(
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey)),
                                  child: Icon(Icons.remove)),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey)),
                              child: Text(
                                "${e["qun"]}",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  decoration: TextDecoration.none
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  e["qun"]++;
                                });
                              },
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey)),
                                child: Icon(Icons.add),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            )
                          ],
                        ),
                        Divider(thickness: 2,),
                      ],
                    ),
                  ))
              .toList(),
             Spacer(),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Total:",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.none,
                          color: Colors.black),
                    ),
                    Text(
                      "${sum}Rs.",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                          color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
          
          Container(padding: EdgeInsets.all(20),
            width: double.infinity,
            child: ElevatedButton(onPressed: (){}, child: Text("Buy Now"))),
          SizedBox(height: 100,),
        // Expanded(flex: 2,
        //   child: Container(
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.end,
        //       crossAxisAlignment: CrossAxisAlignment.end,
        //       children: [
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.end,
        //           crossAxisAlignment: CrossAxisAlignment.end,
        //           children: [
        //             Text(
        //               "Total:",
        //               style: TextStyle(
        //                   fontSize: 20,
        //                   fontWeight: FontWeight.w500,
        //                   color: Colors.black),
        //             ),
        //             Text(
        //               "${sum}Rs.",
        //               style: TextStyle(
        //                   fontSize: 20,
        //                   fontWeight: FontWeight.w500,
        //                   color: Colors.black),
        //             ),
        //           ],
        //         ),
        //       ],
        //     ),
        //   ), )
      ]),
    );
  }
}
