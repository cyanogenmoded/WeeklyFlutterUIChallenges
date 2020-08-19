import 'package:flutter/material.dart';
import 'cards/RowCard.dart';

class AllRow extends StatelessWidget {
  AllRow({this.value = 1});
  final int value;
  @override
  Widget build(BuildContext context) {
    if (value == 1) {
      return Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: RowCard(
                      productName: 'Mask', image: 'images/kn95-mask.png')),
              Expanded(
                  child: RowCard(
                      productName: 'Gloves', image: 'images/gloves.png'))
            ],
          ),
        ],
      );
    } else {
      return Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: RowCard(
                      productName: 'Mask', image: 'images/kn95-mask.png')),
              Expanded(
                  child: RowCard(
                      productName: 'Gloves', image: 'images/gloves.png'))
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: RowCard(
                      productName: 'Vaccine', image: 'images/pro-vac.png')),
              Expanded(
                  child: RowCard(
                      productName: 'Medicine', image: 'images/live-b1.png'))
            ],
          )
        ],
      );
    }
  }
}
