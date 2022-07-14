import 'package:cupertino_rounded_corners/cupertino_rounded_corners.dart';
import 'package:flutter/material.dart';
import 'package:personal_proj/Components/userdetails.dart';

class MyCard extends StatelessWidget {
  final CreditCard cards;
  const MyCard({Key? key, required this.cards}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.transparent,
        ),
        margin: const EdgeInsets.all(3),
        width: MediaQuery.of(context).size.width,
        child: Material(
          shape: const SquircleBorder(),
          elevation: 0,
          color: cards.cardColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 28),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Image(
                        image: AssetImage(cards.cardType),
                        width: 70,
                        height: 70,
                      ),
                    ),
                    Text(
                      cards.cardNumber,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "₵ ${cards.accountBalance}",
                      style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                          color: Colors.black),
                      textAlign: TextAlign.end,
                    ),
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
