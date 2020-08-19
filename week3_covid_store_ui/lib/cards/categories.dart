import 'package:flutter/material.dart';
import 'package:week3_covid_store_ui/AllRow.dart';

enum Category {
  san,
  all,
}
Category selected = Category.san;
int all = 1;

class categoriesCard extends StatefulWidget {
  @override
  _categoriesCardState createState() => _categoriesCardState();
}

class _categoriesCardState extends State<categoriesCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  child: Text(
                    'Sanitization',
                    style: TextStyle(
                        fontSize: 22,
                        color: selected == Category.san
                            ? Colors.white
                            : Colors.grey),
                  ),
                ),
                onTap: () {
                  setState(() {
                    selected = Category.san;
                    all = 1;
                    print(selected);
                  });
                },
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selected = Category.all;
                    all = 2;
                    print(selected);
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  child: Text(
                    'All',
                    style: TextStyle(
                        fontSize: 20,
                        color: selected == Category.all
                            ? Colors.white
                            : Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          AllRow(
            value: all,
          ),
        ],
      ),
    );
  }
}
