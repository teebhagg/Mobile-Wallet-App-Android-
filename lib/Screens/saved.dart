import 'package:flutter/material.dart';
import 'package:personal_proj/Extras/colors.dart';
import 'package:personal_proj/Extras/payments.dart';
import 'package:personal_proj/Screens/charts.dart';
import 'package:simple_icons/simple_icons.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkcolor,
      body: ListView(children: [
        ListView.builder(
          shrinkWrap: true,
          itemCount: service.length,
          itemBuilder: (context, index) {
            return ServiceTile(payments: service[index]);
          },
        )
      ]),
    );
  }
}
