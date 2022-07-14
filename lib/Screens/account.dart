import 'dart:ui';
import 'package:cupertino_rounded_corners/cupertino_rounded_corners.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:personal_proj/Extras/colors.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkcolor,
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: reddish),
        backgroundColor: darkcolor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(BootstrapIcons.arrow_left)),
        title: const Text(
          'User Account',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: reddish),
        ),
        centerTitle: true,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(horizontal: 29),
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Container(
                height: 180,
                width: 180,
                decoration: const ShapeDecoration(
                  shape: SquircleBorder(),
                  color: reddish,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 180,
                    height: 180,
                    decoration: const ShapeDecoration(
                        shape: SquircleBorder(),
                        image: DecorationImage(
                            image: AssetImage('assets/img/profile.jpg'))),
                  ),
                ),
              ),
            ),
          ),

          const Center(
            child: Text(
              'Paditus Burny',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: brightgrey),
            ),
          ),
          const Divider(
            height: 25,
          ),
          const ListTile(
            title: Text(
              'khalijonez7772gmail.com',
              style: TextStyle(color: brightgrey),
            ),
            leading: Icon(
              BootstrapIcons.envelope,
              color: brightgrey,
            ),
          ),
          const Divider(
            height: 2,
          ),
          const ListTile(
            title: Text(
              '+233 20 954 0142',
              style: TextStyle(color: brightgrey),
            ),
            leading: Icon(
              BootstrapIcons.telephone,
              color: brightgrey,
            ),
          ),
          const Divider(
            height: 2,
          ),
        ],
      ),
    );
  }
}
