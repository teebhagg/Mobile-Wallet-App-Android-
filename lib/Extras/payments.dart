import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';

class Payment {
  final IconData icon;
  final String serviceName;

  Payment({required this.icon, required this.serviceName});
}

List pay = [
  Payment(icon: Icons.call, serviceName: "Mobile Top-Up"),
  Payment(icon: Icons.wifi, serviceName: "Pay for Cable"),
  Payment(icon: Icons.currency_exchange, serviceName: "Currency Exchange"),
  Payment(icon: Icons.credit_card, serviceName: "Card Top-Up"),
  Payment(icon: Icons.credit_card, serviceName: "Tranfer To Card"),
];

List service = [
  Payment(icon: SimpleIcons.stackexchange, serviceName: "Subcription"),
  Payment(icon: BootstrapIcons.currency_exchange, serviceName: "International Tranfers"),
  Payment(icon: Icons.shield, serviceName: "Insurance"),
  Payment(icon: Icons.home_filled, serviceName: "Communal"),
];
