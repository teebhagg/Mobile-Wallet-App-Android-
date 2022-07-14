import 'package:flutter/material.dart';
import 'package:personal_proj/Extras/colors.dart';
import 'package:personal_proj/Screens/account.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:personal_proj/Screens/wallet.dart';
import 'package:personal_proj/Screens/saved.dart';
import 'package:personal_proj/Screens/charts.dart';
import 'package:personal_proj/Screens/home_page.dart';
import 'package:simple_icons/simple_icons.dart';

class HomeNavigator extends StatefulWidget {
  const HomeNavigator({Key? key}) : super(key: key);

  @override
  _HomeNavigatorState createState() => _HomeNavigatorState();
}

class _HomeNavigatorState extends State<HomeNavigator> {
  int _selectedIndex = 0;

  final List tabInfo = ["My Wallet", "Payments", "Services", "Charts"];
  final List<Widget> _screens = const [HomePage(), Payments(), Services(), Chart()];

  void _updateIndex(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: darkcolor,
          elevation: 0,
          currentIndex: _selectedIndex,
          onTap: _updateIndex,
          selectedIconTheme: const IconThemeData(size: 30, color: reddish),
          unselectedIconTheme: const IconThemeData(size: 18, color: brightgrey),
          showUnselectedLabels: false,
          showSelectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  BootstrapIcons.house_fill,
                ),
                label: 'Welcome Page'),
            BottomNavigationBarItem(
                icon: Icon(
                  BootstrapIcons.currency_exchange,
                ),
                label: 'Wallet'),
            BottomNavigationBarItem(
                icon: Icon(
                  BootstrapIcons.cash_coin,
                ),
                label: 'Saved'),
            BottomNavigationBarItem(
                icon: Icon(
                  BootstrapIcons.bar_chart_line_fill,
                ),
                label: 'Charts')
          ]),
      appBar: AppBar(
        title:  Text('${tabInfo[_selectedIndex]}', style: TextStyle(color: reddish),),
        centerTitle: true,
        elevation: 0,
        leading: IconButton( onPressed: () {
          
        } ,icon: Icon(BootstrapIcons.gear_fill, color: reddish,),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 12, bottom: 8),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Account()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                  border: Border.all(color: reddish, width: 1.9),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    width: 30,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/img/profile.jpg')),
                      borderRadius: BorderRadius.circular(90),
                      // border: Border.all(color: Colors.white, width: 1)
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      )
    );
  }
}
