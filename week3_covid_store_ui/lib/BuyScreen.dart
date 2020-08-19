import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:week3_covid_store_ui/cards/QButton.dart';

class BuyScreen extends StatefulWidget {
  BuyScreen(
      {this.price,
      this.productCompany,
      this.productName,
      this.image,
      this.herotag,
      this.disc});
  final String productName;
  final String productCompany;
  final double price;
  final String image;
  final String disc;
  final String herotag;
  @override
  _BuyScreenState createState() => _BuyScreenState();
}

class _BuyScreenState extends State<BuyScreen> {
  var icon = Icons.favorite_border;
  String selSize = '50 ml';
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Center(
          child: Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 1),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Color(0xff101010), Color(0xff464e62)],
              ),
            ),
            child: Column(
              children: [
                Expanded(
                    flex: 6,
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20, bottom: 65),
                          child: Center(
                            child: Image.asset(
                              widget.image,
                              fit: BoxFit.none,
                            ),
                          ),
                        ),
                        BackdropFilter(
                          filter: ImageFilter.blur(sigmaY: 15, sigmaX: 22),
                          child: Container(
                              decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0x004D4C50),
                          )),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 50),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0x904D4C50),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 30,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            IconButton(
                              icon: Icon(
                                icon,
                                color: icon == Icons.favorite_border
                                    ? Colors.white
                                    : Colors.red,
                                size: 30,
                              ),
                              onPressed: () {
                                setState(() {
                                  icon = icon == Icons.favorite_border
                                      ? Icons.favorite
                                      : Icons.favorite_border;
                                });
                              },
                            ),
                          ],
                        ),
                        Center(
                          child: Hero(
                            tag: widget.herotag,
                            child: Container(
                              padding: EdgeInsets.only(top: 30),
                              child: Image.asset(
                                widget.image,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                Expanded(
                  flex: 9,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.productName,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'by ${widget.productCompany}',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          widget.disc,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 2,
                              width: MediaQuery.of(context).size.width / 4,
                              color: Colors.grey[600],
                            ),
                            Text(
                              "\$${widget.price.toStringAsFixed(2)}",
                              style: TextStyle(
                                  color: Color(0xffFFD35A),
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w600),
                            ),
                            Container(
                              height: 2,
                              width: MediaQuery.of(context).size.width / 4,
                              color: Colors.grey[600],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              child: Qbut(
                                val: '50 ml',
                                col: selSize == '50 ml'
                                    ? Colors.white
                                    : Color(0xff545557),
                                TC: selSize == '50 ml'
                                    ? Colors.black
                                    : Colors.white,
                              ),
                              onTap: () {
                                setState(() {
                                  selSize = '50 ml';
                                });
                              },
                            ),
                            GestureDetector(
                              child: Qbut(
                                val: '100 ml',
                                col: selSize == '100 ml'
                                    ? Colors.white
                                    : Color(0xff545557),
                                TC: selSize == '100 ml'
                                    ? Colors.black
                                    : Colors.white,
                              ),
                              onTap: () {
                                setState(() {
                                  selSize = '100 ml';
                                });
                              },
                            ),
                            GestureDetector(
                              child: Qbut(
                                val: '150 ml',
                                col: selSize == '150 ml'
                                    ? Colors.white
                                    : Color(0xff545557),
                                TC: selSize == '150 ml'
                                    ? Colors.black
                                    : Colors.white,
                              ),
                              onTap: () {
                                setState(() {
                                  selSize = '150 ml';
                                });
                              },
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width / 4.1,
                              vertical: 10),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color(0xff545557),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    quantity++;
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  child: Icon(
                                    Icons.add,
                                    size: 30,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              Text(
                                quantity.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (quantity > 0) quantity--;
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  child: Icon(
                                    Icons.remove,
                                    size: 30,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.shopping_basket,
                                size: 30,
                              ),
                              Text(
                                '  Add to Basket',
                                style: TextStyle(fontSize: 22),
                              )
                            ],
                          ),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Color(0xffFFD35A),
                              borderRadius: BorderRadius.circular(15)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
