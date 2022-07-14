import 'package:flutter/material.dart';
import 'package:personal_proj/Extras/colors.dart';
import 'package:personal_proj/Screens/homenavigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: darkcolor,
          primaryIconTheme: const IconThemeData(color: brightgrey),
          primaryTextTheme: const TextTheme(
            headline1: TextStyle(color: brightgrey),
            headline2: TextStyle(color: brightgrey),
            headline3: TextStyle(color: brightgrey),
            headline4: TextStyle(color: brightgrey),
            headline5: TextStyle(color: brightgrey),
            headline6: TextStyle(color: brightgrey),
            subtitle1: TextStyle(color: brightgrey),
            subtitle2: TextStyle(color: brightgrey),
            caption: TextStyle(color: brightgrey),
          ),
          iconTheme: IconThemeData(color: brightgrey)
          ),
      // darkTheme: ThemeData.dark(),
      // themeMode: ThemeMode.system,
      home: const HomeNavigator(),
    );
  }
}