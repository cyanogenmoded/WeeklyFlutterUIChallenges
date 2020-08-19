import 'package:flutter/material.dart';

class Qbut extends StatelessWidget {
  final Color col;
  final String val;
  final Color TC;
  Qbut({this.col, this.val, this.TC});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: col,
      ),
      padding: EdgeInsets.all(13),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Text(
        val,
        style: TextStyle(color: TC, fontSize: 18),
      ),
    );
  }
}
