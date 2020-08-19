import 'dart:ui';
import 'package:flutter/material.dart';

class RowCard extends StatelessWidget {
  RowCard({
    this.productName,
    this.image,
  });
  final String productName;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Center(
          child: Column(
        children: [
          Text(productName,
              style: TextStyle(color: Colors.white, fontSize: 20)),
          Image(image: AssetImage(image))
        ],
      )),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0x604D4C50),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
