import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:personal_proj/Components/SpendatureTile.dart';
import 'package:personal_proj/Components/creditcard.dart';
import 'package:personal_proj/Components/userdetails.dart';
import 'package:personal_proj/Extras/colors.dart';
import 'package:personal_proj/Screens/account.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkcolor,
      drawer: Drawer(
        child: Container(
          color: Colors.grey.shade800,
          child: ListView(
            children: [
              const DrawerHeader(
                  decoration: BoxDecoration(color: Colors.black38),
                  child: Text(
                    'MORE',
                    style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  )),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 18.0, horizontal: 15),
                child: Column(
                  children: const [
                    ListTile(
                        horizontalTitleGap: -5,
                        leading: Icon(
                          BootstrapIcons.gear,
                        ),
                        title: Text('Settings',
                            style: TextStyle(
                              fontSize: 15,
                            ))),
                    Divider(
                      height: 20,
                    ),
                    ListTile(
                        horizontalTitleGap: -5,
                        leading: Icon(BootstrapIcons.globe2),
                        title: Text('Check Out Our Website',
                            style: TextStyle(fontSize: 15))),
                    Divider(
                      height: 20,
                    ),
                    ListTile(
                        horizontalTitleGap: -5,
                        leading: Icon(BootstrapIcons.star),
                        title: Text('Rate Us / Write a Review',
                            style: TextStyle(fontSize: 15))),
                    Divider(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      
      body: ListView(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 250,
            child: CarouselSlider.builder(
              itemCount: creditCards.length,
              itemBuilder: (context, itemIndex, pageViewIndex) {
                return MyCard(
                  cards: creditCards[itemIndex],
                );
              },
              options: CarouselOptions(
                height: 330.0,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                enableInfiniteScroll: false,
                viewportFraction: 0.75,
              ),
            ),
          ),
          ListView.builder(
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              itemCount: spendature.length,
              itemBuilder: (context, index) {
                return SpendatureTile(spend: spendature[index]);
              }),
        ],
      ),
    );
  }
}
