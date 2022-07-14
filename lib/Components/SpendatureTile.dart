import 'package:flutter/material.dart';
import 'package:personal_proj/Components/userdetails.dart';
import 'package:personal_proj/Extras/colors.dart';

class SpendatureTile extends StatefulWidget {
  final Spendature spend;
  const SpendatureTile({Key? key, required this.spend}) : super(key: key);

  @override
  State<SpendatureTile> createState() => _SpendatureTileState();
}

class _SpendatureTileState extends State<SpendatureTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 15,
      minLeadingWidth: 40,
      title: Text(
        widget.spend.service,
        style: const TextStyle(
            color: Colors.white, fontSize: 19, fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        widget.spend.date,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.w300, fontSize: 15),
      ),
      leading: Icon(
        widget.spend.icon,
        size: 33,
        color: brightgrey,
      ),
      trailing: Text(
        '-  ₵ ${widget.spend.price.toString()}',
        style: const TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
      ),
    );
  }
}
