import 'package:flutter/material.dart';
class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    // Map<String, dynamic> akash =
        // ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>;
    return Scaffold(
      appBar: AppBar(title: Text("Details")),
    // body: Container(
    //   alignment: Alignment.center,
    //   child: Column(children: [
    //     Container(height: 200,width: double.infinity,child:Image.asset(akash["image"]),),
    //   ]),
    // ),
    );
  }
}