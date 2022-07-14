import 'package:flutter/material.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:personal_proj/Extras/colors.dart';
import 'package:personal_proj/Extras/payments.dart';
import 'package:personal_proj/Screens/account.dart';

class Payments extends StatefulWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  _PaymentsState createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkcolor,
      body: ListView(children: [
        ListView.builder(
          shrinkWrap: true,
          itemCount: pay.length,
          itemBuilder: (context, index) {
            return ServiceTile(payments: pay[index]);
          },
        )
      ]),
    );
  }
}

class ServiceTile extends StatefulWidget {
  final Payment payments;
  const ServiceTile({Key? key, required this.payments}) : super(key: key);

  @override
  State<ServiceTile> createState() => _ServiceTileState();
}

class _ServiceTileState extends State<ServiceTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Card(
        color: darkgrey,
        child: ListTile(
          leading: Icon(
            widget.payments.icon,
            color: brightgrey,
          ),
          title: Text(
            "${widget.payments.serviceName}",
            style: TextStyle(color: brightgrey),
          ),
        ),
      ),
    );
  }
}
