import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/globals.dart';

class Like extends StatefulWidget {
  const Like({super.key});

  @override
  State<Like> createState() => _LikeState();
}

class _LikeState extends State<Like> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
       Column(children: [
        SizedBox(height: 100,),
        ...Globals.likes
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
                                "${e["Price"]}",
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
                                Globals.likes.remove(e);
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                "Remove",
                                
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18,fontWeight: FontWeight.w400,decoration: TextDecoration.none),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                        ],
                      ),
                      Divider(thickness: 2,),
                    ],
                  ),
                ))
            .toList(),
      ]),
    );
  }
}
