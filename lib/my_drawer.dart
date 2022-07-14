import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                        color: Colors.white,
                      ),
                      title: Text('Settings',
                          style: TextStyle(fontSize: 15, color: Colors.white))),
                  Divider(
                    height: 20,
                  ),
                  ListTile(
                      horizontalTitleGap: -5,
                      leading: Icon(BootstrapIcons.globe2, color: Colors.white),
                      title: Text('Check Out Our Website',
                          style: TextStyle(fontSize: 15, color: Colors.white))),
                  Divider(
                    height: 20,
                  ),
                  ListTile(
                      horizontalTitleGap: -5,
                      leading: Icon(BootstrapIcons.star, color: Colors.white),
                      title: Text('Rate Us / Write a Review',
                          style: TextStyle(fontSize: 15, color: Colors.white))),
                  Divider(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
