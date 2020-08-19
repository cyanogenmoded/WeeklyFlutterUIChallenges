import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:week3_covid_store_ui/BuyScreen.dart';
import 'package:week3_covid_store_ui/cards/categories.dart';
import 'package:week3_covid_store_ui/cards/productCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      initialRoute: 'home',
      routes: {
        'home': (context) => HomePage(),
        'buyScreen': (context) => BuyScreen(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selected = 'Vaccine';
  final List<String> topRow = [
    'Vaccine',
    'Sanitizer',
    'Gloves',
    'Mask',
    'Hand wash'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Center(
          child: Container(
            padding: EdgeInsets.only(top: 20, right: 20, left: 20),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Color(0xff101010), Color(0xff464e62)])),
            child: ListView(
              addRepaintBoundaries: false,
              primary: false,
              physics: BouncingScrollPhysics(),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.menu,
                          size: 50,
                          color: Colors.white,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        CircleAvatar(
                          radius: (25),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("images/shreyans.jpg"),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Center(
                      child: Container(
                        color: Colors.transparent,
                        height: 52,
                        child: ListView.builder(
                          primary: false,
                          addRepaintBoundaries: false,
                          physics: BouncingScrollPhysics(),
                          itemCount: topRow.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selected = topRow[index];
                                });
                              },
                              child: Card(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 3),
                                elevation: 3,
                                color: selected == topRow[index]
                                    ? Colors.white
                                    : Color(0xcc4D4C50),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0)),
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Center(
                                    child: Text(
                                      topRow[index],
                                      style: TextStyle(
                                          color: selected == topRow[index]
                                              ? Colors.black
                                              : Colors.white,
                                          fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 300,
                      padding: EdgeInsets.only(top: 20),
                      color: Colors.transparent,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        children: [
                          Row(
                            children: [
                              ProductCard(
                                herotag: 'h1',
                                price: 34.54,
                                productCompany: 'baximco',
                                productName: 'Pro-Vac Venco',
                                image: 'images/pro-vac.png',
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              ProductCard(
                                herotag: 'h2',
                                price: 21.24,
                                productCompany: 'B1 Strain',
                                productName: 'Disease Control',
                                image: 'images/live-b1.png',
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              ProductCard(
                                herotag: 'h3',
                                price: 34.54,
                                productCompany: 'baximco',
                                productName: 'Pro-Vac Venco',
                                image: 'images/pro-vac.png',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    categoriesCard(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
