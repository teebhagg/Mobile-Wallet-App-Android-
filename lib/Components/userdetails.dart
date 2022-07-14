import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';

class CreditCard {
  final String cardNumber;
  final Color cardColor;
  final String cardType;
  final double accountBalance;

  CreditCard(
      {required this.cardType,
      required this.cardColor,
      required this.cardNumber,
      required this.accountBalance});
}

List creditCards = [
  CreditCard(
      cardColor: Color(0xFF60FF63),
      cardType: "assets/icon/mastercard.png",
      cardNumber: "5188 2265 8182 9855",
      accountBalance: 2566.85),
  CreditCard(
      cardColor: Color.fromARGB(255, 31, 155, 232),
      cardType: "assets/icon/mastercard.png",
      cardNumber: "5162 0615 2275 9199",
      accountBalance: 9763.22),
  CreditCard(
      cardColor: Color.fromARGB(255, 234, 234, 234),
      cardType: "assets/icon/visa.png",
      cardNumber: "4917 9588 9903 0964",
      accountBalance: 721.02),
];

class Spendature {
  final String service;
  final String date;
  final double price;
  final IconData icon;

  Spendature(this.service, this.date, this.price, this.icon);
}

List spendature = [
  Spendature("Spotify", "13th June 2022", 10.49, SimpleIcons.spotify,),
  Spendature("KFC", "27th April 2022", 50.32, SimpleIcons.kfc),
  Spendature("Shoprite", "3rd July 2022", 120.50, Icons.local_mall,),
  Spendature("Bobby's Clothes and More", "9th July 2022", 200.50, Icons.shop,),
  Spendature("Denis Grey Apple Shop", "10th July 2022", 300.5, Icons.apple,),
  Spendature("Shoprite", "3rd July 2022", 100.70, Icons.local_mall,),
  Spendature("KFC", "27th April 2022", 73.2, SimpleIcons.kfc),
];
