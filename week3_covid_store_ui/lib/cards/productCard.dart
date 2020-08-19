import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:week3_covid_store_ui/BuyScreen.dart';
import 'package:week3_covid_store_ui/cards/IconLayout.dart';

class ProductCard extends StatelessWidget {
  ProductCard(
      {this.price,
      this.productCompany,
      this.productName,
      this.image,
      this.herotag});
  final String productName;
  final String productCompany;
  final double price;
  final String image;
  final String herotag;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 180.0,
          height: 230.0,
          margin: EdgeInsets.only(left: 0.0, top: 60.0, bottom: 0.0, right: 0),
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 15),
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0x904D4C50),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    'by $productCompany',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 14.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${price.toStringAsFixed(2)}",
                        style: TextStyle(
                            color: Color(0xffFFD35A),
                            fontSize: 22.0,
                            fontWeight: FontWeight.w600),
                      ),
                      IconLayout(
                        icon: Icons.shopping_basket,
                        iconColor: Colors.black,
                        bgColor: Color(0xffFFD35A),
                        size: 22,
                        onPress: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              transitionDuration: Duration(milliseconds: 550),
                              pageBuilder: (_, __, ___) => BuyScreen(
                                price: price,
                                productCompany: productCompany,
                                productName: productName,
                                image: image,
                                herotag: herotag,
                                disc:
                                    'A COVID-19 vaccine manufacturing plant of the institute in Kunming, capital city Yunnan Province, will be put into use in the second half of 2020',
                              ),
                            ),
                          );
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: -10,
          left: 0,
          child: Hero(
            tag: herotag,
            child: Container(
              child: Image.asset(
                image,
                width: 180.0,
                height: 200.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
